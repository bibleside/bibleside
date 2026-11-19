import '../../common/enums.dart';
import '../json_to_bible.dart';

/// The OET Reader's Version (OET-RV) implementation
///
/// The OET-RV is displayed in sections paragraph-by-paragraph and contains section boxes.
class OETReadersBibleImpl extends JsonToBible {
  OETReadersBibleImpl(Map<String, dynamic> json) : super(json: json);

  /// Collects the text of a USJ node, including text nested inside `char`
  /// items (e.g. `wj` containing `add` or `nd`). Notes are skipped.
  static String _textOf(dynamic node) {
    if (node is String) return node;
    if (node is Map && node['type'] != 'note') {
      String text = '';
      for (dynamic child in node['content'] ?? []) {
        text += _textOf(child);
      }
      return text;
    }
    return '';
  }

  /// Whether a paragraph carries verse text. Acrostic headings (`qa`) are not
  /// verse text.
  static bool _isTextPara(Map item) {
    final String marker = item['marker'].toString();
    return marker == 'p' ||
        marker == 'd' ||
        marker == 'm' ||
        marker == 'nb' ||
        marker == 'mi' ||
        marker == 'pc' ||
        marker == 'sp' ||
        (marker.startsWith('q') && marker != 'qa') ||
        marker.startsWith('li') ||
        marker.startsWith('pi');
  }

  // TODO: currently replaces all ' marks with ’.
  @override
  Future<String> getBook(
    Area readerArea,
    String bookCode,
    List<String> bookmarks,
    bool showSpecialMarks,
    bool showChaptersAndVerses,
  ) async {
    String htmlText = '';
    String chapterNumberHtml = '';
    String chapterNumber = '1';

    String sectionText = '';
    bool pendingSection = false;

    // State for assembling a verse
    String currentVerseId = '';
    String currentVerseNumber = '';
    String currentVerseText = '';
    bool hasPendingVerse = false;
    bool isVerseContinuing = false;

    void flushVerse({bool isEndOfPara = false}) {
      if (hasPendingVerse) {
        if (isVerseContinuing && currentVerseText.isEmpty) {
          // Skip empty continuations
        } else {
          // Note: we remove numbers and markings related to links for now
          String formattedText = currentVerseText
              .replaceAll(RegExp(r'¦([0-9])*\d+'), '')
              .replaceAll(' +', ' ')
              .replaceAll('>', ' ')
              // A raw '<' would start an HTML tag and swallow the rest of the verse.
              .replaceAll('<', '')
              .replaceAll('=', ' ')
              .replaceAll("'", "’")
              .replaceAll("≈", "")
              .replaceAll("≡", "")
              .replaceAll("@", "")
              .replaceAll("→", "");

          if (pendingSection) {
            String sectionId =
                '${readerArea.name}-$bookCode-$chapterNumber-$currentVerseNumber';
            htmlText +=
                '''</p><div class="section-box"><p><sup id="$sectionId">$chapterNumber:$currentVerseNumber</sup> ${sectionText.replaceAll('\'', '’')}</p></div><p>''';
            pendingSection = false;
          }

          String bookmarkIcon = isVerseContinuing
              ? ''
              : bookmarkIconHTML(currentVerseId, bookmarks);
          String supHtml = isVerseContinuing
              ? ''
              : '<sup id="$currentVerseId">${showChaptersAndVerses ? currentVerseNumber : ''}</sup>&nbsp;';

          htmlText +=
              '''<span ondblclick="onCreateBookmark(&quot;$currentVerseId&quot;)" class="p">$chapterNumberHtml$bookmarkIcon$supHtml$formattedText</span>''';

          chapterNumberHtml = '';
          currentVerseText = '';
        }

        if (isEndOfPara) {
          isVerseContinuing = true;
        } else {
          isVerseContinuing = false;
          hasPendingVerse = false;
        }
      } else if (!isEndOfPara) {
        hasPendingVerse = false;
        isVerseContinuing = false;
      }
    }

    if (json['content'] == null) {
      return htmlText;
    }

    for (Map item in json['content']) {
      if (item['type'] == 'chapter') {
        chapterNumber = item['number'];
        String chapterId = '${readerArea.name}-$bookCode-$chapterNumber';
        chapterNumberHtml =
            '''<span class="c" id="$chapterId">${showChaptersAndVerses ? chapterNumber : ''}</span>''';
      }

      if (item['type'] == 'para') {
        if (item['marker'] == 's1' ||
            item['marker'] == 's2' ||
            item['marker'] == 's') {
          String text = '';
          for (dynamic contentItem in item['content'] ?? []) {
            text += _textOf(contentItem);
          }
          sectionText = text.trim();
          pendingSection = true;
        } else if (_isTextPara(item)) {
          htmlText += '<p>';

          for (dynamic contentItem in item['content'] ?? []) {
            if (contentItem is Map) {
              if (contentItem['type'] == 'verse') {
                flushVerse(isEndOfPara: false);
                currentVerseNumber = contentItem['number'];
                currentVerseId =
                    '${readerArea.name}-$bookCode-$chapterNumber-$currentVerseNumber';
                hasPendingVerse = true;
              } else if (contentItem['type'] == 'char') {
                currentVerseText += _textOf(contentItem).replaceAll('≈', '');
              }
            } else if (contentItem is String) {
              if (hasPendingVerse) {
                currentVerseText += contentItem;
              }
            }
          }

          flushVerse(isEndOfPara: true);
          htmlText += '</p>';
        }
      }
    }

    return htmlText;
  }
}
