import 'package:material_ui/material_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

import '../common/enums.dart';
import '../common/themes.dart';

class ThemeService with ListenableServiceMixin {
  ThemeService() {
    listenToReactiveValues([_activeTheme]);
  }

  static const _kTheme = 'ACTIVE_THEME';

  AppTheme _activeTheme = AppTheme.light;
  AppTheme get activeTheme => _activeTheme;
  ThemeData get currentThemeData => AppThemes.getTheme(_activeTheme);

  Future<void> init() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String savedTheme = prefs.getString(_kTheme) ?? AppTheme.light.name;

    try {
      _activeTheme = AppTheme.values.byName(savedTheme);
    } catch (_) {
      // Reset to default
      await setTheme(AppTheme.light);
    }

    notifyListeners();
  }

  Future<void> setTheme(AppTheme selectedTheme) async {
    if (_activeTheme == selectedTheme) return;

    _activeTheme = selectedTheme;

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_kTheme, selectedTheme.name);
    } catch (_) {
      // Fail silently to avoid breaking the current UI session context
    }
    notifyListeners();
  }
}
