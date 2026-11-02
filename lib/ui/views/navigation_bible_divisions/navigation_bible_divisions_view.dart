import 'package:material_ui/material_ui.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../common/books.dart';
import '../../../common/enums.dart';
import '../../../common/themes.dart';
import '../../widgets/common/bible_division_indicator/bible_division_indicator.dart';
import 'navigation_bible_divisions_viewmodel.dart';

class NavigationBibleDivisionsView extends StackedView<NavigationBibleDivisionsViewModel> {
  const NavigationBibleDivisionsView({
    super.key,
    required this.readerArea,
  });

  final Area readerArea;

  @override
  Widget builder(
    BuildContext context,
    NavigationBibleDivisionsViewModel viewModel,
    Widget? child,
  ) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: viewModel.onPopInvoked,
      child: Scaffold(
        backgroundColor: context.appColors.background,
        appBar: AppBar(
          backgroundColor: context.appColors.background,
          centerTitle: true,
          scrolledUnderElevation: 0.0,
          title: Text(
            viewModel.getTitle(),
            style: TextStyle(
              color: context.appColors.primary,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: booksInSectionsMapping.keys.length,
                    itemBuilder: (BuildContext context, int index) {
                      String bibleDivisionCode = BooksMapping.bibleDivisionCodeFromIndex(index);
                      return Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                          onTap: () => viewModel.onTapBibleDivisionItem(bibleDivisionCode),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 13.0, right: 8),
                                        child: BibleDivisionIndicator(
                                          color: BooksMapping.colorFromBibleDivisionCode(bibleDivisionCode),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      BooksMapping.bibleDivisionNameFromCode(bibleDivisionCode),
                                      style: TextStyle(
                                        color: context.appColors.primary,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                                PhosphorIcon(
                                  PhosphorIconsBold.caretRight,
                                  color: context.appColors.primary,
                                  size: 18.0,
                                  semanticLabel: 'Caret right',
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  color: context.isDark ? context.appColors.surface : context.appColors.surface.withAlpha(8),
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          PhosphorIcon(
                            PhosphorIcons.clockCounterClockwise,
                            color: context.appColors.secondary,
                            size: 16.0,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'RECENT',
                            style: TextStyle(
                              color: context.appColors.secondary,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 7.0),
                      SizedBox(
                        height: 50,
                        child: viewModel.recentBooks.isNotEmpty
                            ? GridView.builder(
                                itemCount: viewModel.recentBooks.length,
                                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 120,
                                  childAspectRatio: 4 / 2,
                                  crossAxisSpacing: 18,
                                  mainAxisSpacing: 8,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  String bookCode = viewModel.recentBooks.elementAt(index);
                                  return Material(
                                    type: MaterialType.transparency,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(12.0),
                                      onTap: () => viewModel.onTapRecentBookItem(bookCode),
                                      child: Center(
                                        child: Text(
                                          BooksMapping.bookNameFromBookCode(bookCode),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: context.appColors.primary,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 14.0),
                                child: Text(
                                  'Your recent books will appear here.',
                                  style: TextStyle(
                                    color: context.appColors.secondary,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  NavigationBibleDivisionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavigationBibleDivisionsViewModel(readerArea: readerArea);
}
