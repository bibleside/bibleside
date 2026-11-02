import 'package:material_ui/material_ui.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../../../common/books.dart';
import '../../../../../common/enums.dart';
import '../../../../../common/themes.dart';
import '../../../../widgets/common/bible_division_indicator/bible_division_indicator.dart';
import 'reader_selector_btn_model.dart';

class ReaderSelectorBtn extends StackedView<ReaderSelectorBtnModel> {
  const ReaderSelectorBtn({
    super.key,
    required this.readerArea,
    required this.isActive,
    required this.onTapBook,
    required this.onTapBibleVersion,
  });

  final Area readerArea;
  final bool isActive;
  final Function() onTapBook;
  final Function() onTapBibleVersion;

  @override
  Widget builder(
    BuildContext context,
    ReaderSelectorBtnModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: context.appColors.readerSelectorBackground,
        borderRadius: BorderRadius.circular(60.0),
      ),
      child: Row(
        children: [
          Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: onTapBook,
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 7.0),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 13.0),
                        child: BibleDivisionIndicator(
                          color: BooksMapping.colorFromBookCode(viewModel.bookCode),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        BooksMapping.bookNameFromBookCode(viewModel.bookCode),
                        style: TextStyle(
                          fontSize: 15.0,
                          color: context.appColors.textOnDark,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: onTapBibleVersion,
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        readerArea == Area.primary ? viewModel.primaryBible : viewModel.secondaryBible,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: context.appColors.textOnDark,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.1,
                        ),
                      ),
                    ),
                    PhosphorIcon(
                      isActive == true ? PhosphorIconsBold.caretUp : PhosphorIconsBold.caretDown,
                      color: context.appColors.iconOnDark,
                      size: 15.0,
                      semanticLabel: isActive == true ? 'Caret up' : 'Caret down',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  ReaderSelectorBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      ReaderSelectorBtnModel();
}
