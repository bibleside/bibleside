import 'package:material_ui/material_ui.dart';
import 'package:stacked/stacked.dart';
import 'app/app.locator.dart';
import 'services/theme_service.dart';

class AppViewModel extends ReactiveViewModel {
  final _themeService = locator<ThemeService>();

  ThemeData get themeData => _themeService.currentThemeData;

  @override
  List<ListenableServiceMixin> get listenableServices => [_themeService];
}
