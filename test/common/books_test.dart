import 'package:flutter_test/flutter_test.dart';
import 'package:bible_side/common/books.dart';

void main() {
  group('BooksMapping.bookNameFromBookCode -', () {
    test('returns the full name for a book code', () {
      expect(BooksMapping.bookNameFromBookCode('GEN'), 'Genesis');
      expect(BooksMapping.bookNameFromBookCode('JHN'), 'John');
      expect(BooksMapping.bookNameFromBookCode('SA1'), '1 Samuel');
    });

    test('returns an empty string for an unknown code', () {
      expect(BooksMapping.bookNameFromBookCode('XYZ'), '');
    });

    test('agrees with booksMapping for every book', () {
      for (final entry in booksMapping.entries) {
        expect(BooksMapping.bookNameFromBookCode(entry.key), entry.value,
            reason: 'book code ${entry.key}');
      }
    });
  });
}
