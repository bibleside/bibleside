// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:bible_side/common/enums.dart' as _i13;
import 'package:bible_side/ui/views/bibles/bibles_view.dart' as _i5;
import 'package:bible_side/ui/views/bookmarks/bookmarks_view.dart' as _i10;
import 'package:bible_side/ui/views/navigation_bible_divisions/navigation_bible_divisions_view.dart' as _i7;
import 'package:bible_side/ui/views/navigation_books/navigation_books_view.dart' as _i8;
import 'package:bible_side/ui/views/navigation_sections_chapters/navigation_sections_chapters_view.dart' as _i9;
import 'package:bible_side/ui/views/reader/reader_view.dart' as _i4;
import 'package:bible_side/ui/views/search/search_view.dart' as _i6;
import 'package:bible_side/ui/views/settings/settings_view.dart' as _i3;
import 'package:bible_side/ui/views/startup/startup_view.dart' as _i2;
import 'package:flutter/material.dart' as _i11;
import 'package:flutter/material.dart';
import 'package:material_ui/material_ui.dart' as _i12;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i14;

class Routes {
  static const startupView = '/startup-view';

  static const settingsView = '/settings-view';

  static const readerView = '/reader-view';

  static const biblesView = '/bibles-view';

  static const searchView = '/search-view';

  static const navigationBibleDivisionsView = '/navigation-bible-divisions-view';

  static const navigationBooksView = '/navigation-books-view';

  static const navigationSectionsChaptersView = '/navigation-sections-chapters-view';

  static const bookmarksView = '/bookmarks-view';

  static const all = <String>{
    startupView,
    settingsView,
    readerView,
    biblesView,
    searchView,
    navigationBibleDivisionsView,
    navigationBooksView,
    navigationSectionsChaptersView,
    bookmarksView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i3.SettingsView,
    ),
    _i1.RouteDef(
      Routes.readerView,
      page: _i4.ReaderView,
    ),
    _i1.RouteDef(
      Routes.biblesView,
      page: _i5.BiblesView,
    ),
    _i1.RouteDef(
      Routes.searchView,
      page: _i6.SearchView,
    ),
    _i1.RouteDef(
      Routes.navigationBibleDivisionsView,
      page: _i7.NavigationBibleDivisionsView,
    ),
    _i1.RouteDef(
      Routes.navigationBooksView,
      page: _i8.NavigationBooksView,
    ),
    _i1.RouteDef(
      Routes.navigationSectionsChaptersView,
      page: _i9.NavigationSectionsChaptersView,
    ),
    _i1.RouteDef(
      Routes.bookmarksView,
      page: _i10.BookmarksView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      final args = data.getArgs<StartupViewArguments>(
        orElse: () => const StartupViewArguments(),
      );
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i2.StartupView(key: args.key),
        settings: data,
      );
    },
    _i3.SettingsView: (data) {
      final args = data.getArgs<SettingsViewArguments>(
        orElse: () => const SettingsViewArguments(),
      );
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.SettingsView(key: args.key),
        settings: data,
      );
    },
    _i4.ReaderView: (data) {
      final args = data.getArgs<ReaderViewArguments>(
        orElse: () => const ReaderViewArguments(),
      );
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.ReaderView(key: args.key),
        settings: data,
      );
    },
    _i5.BiblesView: (data) {
      final args = data.getArgs<BiblesViewArguments>(nullOk: false);
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.BiblesView(key: args.key, readerArea: args.readerArea),
        settings: data,
      );
    },
    _i6.SearchView: (data) {
      final args = data.getArgs<SearchViewArguments>(
        orElse: () => const SearchViewArguments(),
      );
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.SearchView(key: args.key),
        settings: data,
      );
    },
    _i7.NavigationBibleDivisionsView: (data) {
      final args = data.getArgs<NavigationBibleDivisionsViewArguments>(nullOk: false);
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.NavigationBibleDivisionsView(key: args.key, readerArea: args.readerArea),
        settings: data,
      );
    },
    _i8.NavigationBooksView: (data) {
      final args = data.getArgs<NavigationBooksViewArguments>(nullOk: false);
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.NavigationBooksView(
            key: args.key, readerArea: args.readerArea, bibleDivisionCode: args.bibleDivisionCode),
        settings: data,
      );
    },
    _i9.NavigationSectionsChaptersView: (data) {
      final args = data.getArgs<NavigationSectionsChaptersViewArguments>(nullOk: false);
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i9.NavigationSectionsChaptersView(key: args.key, readerArea: args.readerArea, bookCode: args.bookCode),
        settings: data,
      );
    },
    _i10.BookmarksView: (data) {
      final args = data.getArgs<BookmarksViewArguments>(
        orElse: () => const BookmarksViewArguments(),
      );
      return _i11.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.BookmarksView(key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class StartupViewArguments {
  const StartupViewArguments({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant StartupViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SettingsViewArguments {
  const SettingsViewArguments({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SettingsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class ReaderViewArguments {
  const ReaderViewArguments({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant ReaderViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class BiblesViewArguments {
  const BiblesViewArguments({
    this.key,
    required this.readerArea,
  });

  final _i12.Key? key;

  final _i13.Area readerArea;

  @override
  String toString() {
    return '{"key": "$key", "readerArea": "$readerArea"}';
  }

  @override
  bool operator ==(covariant BiblesViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.readerArea == readerArea;
  }

  @override
  int get hashCode {
    return key.hashCode ^ readerArea.hashCode;
  }
}

class SearchViewArguments {
  const SearchViewArguments({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SearchViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class NavigationBibleDivisionsViewArguments {
  const NavigationBibleDivisionsViewArguments({
    this.key,
    required this.readerArea,
  });

  final _i12.Key? key;

  final _i13.Area readerArea;

  @override
  String toString() {
    return '{"key": "$key", "readerArea": "$readerArea"}';
  }

  @override
  bool operator ==(covariant NavigationBibleDivisionsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.readerArea == readerArea;
  }

  @override
  int get hashCode {
    return key.hashCode ^ readerArea.hashCode;
  }
}

class NavigationBooksViewArguments {
  const NavigationBooksViewArguments({
    this.key,
    required this.readerArea,
    required this.bibleDivisionCode,
  });

  final _i12.Key? key;

  final _i13.Area readerArea;

  final String bibleDivisionCode;

  @override
  String toString() {
    return '{"key": "$key", "readerArea": "$readerArea", "bibleDivisionCode": "$bibleDivisionCode"}';
  }

  @override
  bool operator ==(covariant NavigationBooksViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.readerArea == readerArea && other.bibleDivisionCode == bibleDivisionCode;
  }

  @override
  int get hashCode {
    return key.hashCode ^ readerArea.hashCode ^ bibleDivisionCode.hashCode;
  }
}

class NavigationSectionsChaptersViewArguments {
  const NavigationSectionsChaptersViewArguments({
    this.key,
    required this.readerArea,
    required this.bookCode,
  });

  final _i12.Key? key;

  final _i13.Area readerArea;

  final String bookCode;

  @override
  String toString() {
    return '{"key": "$key", "readerArea": "$readerArea", "bookCode": "$bookCode"}';
  }

  @override
  bool operator ==(covariant NavigationSectionsChaptersViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.readerArea == readerArea && other.bookCode == bookCode;
  }

  @override
  int get hashCode {
    return key.hashCode ^ readerArea.hashCode ^ bookCode.hashCode;
  }
}

class BookmarksViewArguments {
  const BookmarksViewArguments({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant BookmarksViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

extension NavigatorStateExtension on _i14.NavigationService {
  Future<dynamic> navigateToStartupView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.startupView,
        arguments: StartupViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.settingsView,
        arguments: SettingsViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToReaderView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.readerView,
        arguments: ReaderViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBiblesView({
    _i12.Key? key,
    required _i13.Area readerArea,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.biblesView,
        arguments: BiblesViewArguments(key: key, readerArea: readerArea),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSearchView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.searchView,
        arguments: SearchViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNavigationBibleDivisionsView({
    _i12.Key? key,
    required _i13.Area readerArea,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.navigationBibleDivisionsView,
        arguments: NavigationBibleDivisionsViewArguments(key: key, readerArea: readerArea),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNavigationBooksView({
    _i12.Key? key,
    required _i13.Area readerArea,
    required String bibleDivisionCode,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.navigationBooksView,
        arguments: NavigationBooksViewArguments(key: key, readerArea: readerArea, bibleDivisionCode: bibleDivisionCode),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNavigationSectionsChaptersView({
    _i12.Key? key,
    required _i13.Area readerArea,
    required String bookCode,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.navigationSectionsChaptersView,
        arguments: NavigationSectionsChaptersViewArguments(key: key, readerArea: readerArea, bookCode: bookCode),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBookmarksView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return navigateTo<dynamic>(Routes.bookmarksView,
        arguments: BookmarksViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.startupView,
        arguments: StartupViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.settingsView,
        arguments: SettingsViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithReaderView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.readerView,
        arguments: ReaderViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBiblesView({
    _i12.Key? key,
    required _i13.Area readerArea,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.biblesView,
        arguments: BiblesViewArguments(key: key, readerArea: readerArea),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSearchView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.searchView,
        arguments: SearchViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNavigationBibleDivisionsView({
    _i12.Key? key,
    required _i13.Area readerArea,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.navigationBibleDivisionsView,
        arguments: NavigationBibleDivisionsViewArguments(key: key, readerArea: readerArea),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNavigationBooksView({
    _i12.Key? key,
    required _i13.Area readerArea,
    required String bibleDivisionCode,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.navigationBooksView,
        arguments: NavigationBooksViewArguments(key: key, readerArea: readerArea, bibleDivisionCode: bibleDivisionCode),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNavigationSectionsChaptersView({
    _i12.Key? key,
    required _i13.Area readerArea,
    required String bookCode,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.navigationSectionsChaptersView,
        arguments: NavigationSectionsChaptersViewArguments(key: key, readerArea: readerArea, bookCode: bookCode),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBookmarksView({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transition,
  }) async {
    return replaceWith<dynamic>(Routes.bookmarksView,
        arguments: BookmarksViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
