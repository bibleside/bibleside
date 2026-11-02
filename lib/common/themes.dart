import 'package:material_ui/material_ui.dart';

import 'enums.dart';

abstract class ReaderTextPalette {
  // Red letters for Words of the Messiah
  static const redLetter = Color(0xFFC24545);

  // Add article +
  static const addArticle = Color(0xFFCB9169);

  // Add extra >
  static const addExtra = Color(0xFF5EC651);

  // Add copula =
  static const addCopula = Color(0xFFC260B1);

  // Add unused -

  // Add direct object ~

  // Add owner ^
}

abstract class LightPalette {
  static const white = Colors.white;
  static const white70 = Colors.white70;
  static const almostWhiteBlue = Color(0xFFF0F9FF);
  static const mediumBlue = Color(0xFF1F3D57);
  static const darkBlue = Color(0xFF193247);
  static const mediumSlate = Color(0xFF515358);
  static const mediumSlate10 = Color(0x1A515358);
}

abstract class DarkPalette {
  static const white = Colors.white;
  static const white10 = Colors.white10;
  static const white70 = Colors.white70;
  static const mediumLightGray = Color(0xFFA9ADB1);
  static const darkGray = Color(0xFF1F2123);
  static const blueGray = Color(0xFF24292D);
  static const almostBlack = Color(0xFF161718);
}

abstract class SepiaPalette {
  static const white = Colors.white;
  static const almostWhiteTan = Color(0xFFFBF8E9);
  static const lightTan = Color(0xFFEBDFC7);
  static const mediumBrown = Color(0xFF8E8367);
  static const mediumDarkBrown = Color(0xFF655F49);
  static const mediumGray = Color(0xFF5E6166);
  static const mediumDarkGray = Color(0xFF414546);
}

abstract class HighContrastPalette {
  static const white = Colors.white;
  static const black = Colors.black;
}

class AppThemes {
  static final _lightTokens = AppColorsExtension(
    primary: LightPalette.mediumSlate,
    secondary: LightPalette.mediumSlate,
    textOnLight: LightPalette.mediumSlate,
    textOnDark: LightPalette.white,
    iconOnLight: LightPalette.mediumSlate,
    iconOnDark: LightPalette.white,
    background: LightPalette.white,
    surface: LightPalette.mediumBlue,
    accent: LightPalette.darkBlue,
    divider: LightPalette.mediumSlate10,
    icon: LightPalette.mediumSlate,
    inputBackground: LightPalette.almostWhiteBlue,
    inputBorder: LightPalette.mediumSlate10,
    inputText: LightPalette.mediumSlate,
    inputAccent: LightPalette.mediumBlue,
    readerSelectorBackground: LightPalette.darkBlue,
    readerText: LightPalette.mediumSlate,
    readerRedLetter: ReaderTextPalette.redLetter,
    readerAddArticle: ReaderTextPalette.addArticle,
    readerAddExtra: ReaderTextPalette.addExtra,
    readerCopulaPink: ReaderTextPalette.addCopula,
  );

  static final _lightTextSelectionTokens = const TextSelectionThemeData(
    cursorColor: LightPalette.mediumSlate,
    selectionColor: Color(0xFF96BAD9),
    selectionHandleColor: LightPalette.mediumBlue,
  );

  // 2. DARK TOKENS
  static final _darkTokens = AppColorsExtension(
    primary: DarkPalette.mediumLightGray,
    secondary: DarkPalette.mediumLightGray,
    textOnLight: DarkPalette.mediumLightGray,
    textOnDark: DarkPalette.white,
    iconOnLight: DarkPalette.white70,
    iconOnDark: DarkPalette.white,
    background: DarkPalette.almostBlack,
    surface: DarkPalette.darkGray,
    accent: DarkPalette.white,
    divider: DarkPalette.white10,
    icon: DarkPalette.white70,
    inputBackground: DarkPalette.darkGray,
    inputBorder: DarkPalette.blueGray,
    inputText: DarkPalette.white,
    inputAccent: DarkPalette.blueGray,
    readerSelectorBackground: DarkPalette.darkGray,
    readerText: DarkPalette.mediumLightGray,
    readerRedLetter: ReaderTextPalette.redLetter,
    readerAddArticle: ReaderTextPalette.addArticle,
    readerAddExtra: ReaderTextPalette.addExtra,
    readerCopulaPink: ReaderTextPalette.addCopula,
  );

  static final _darkTextSelectionTokens = const TextSelectionThemeData(
    cursorColor: DarkPalette.white,
    selectionColor: DarkPalette.blueGray,
    selectionHandleColor: DarkPalette.mediumLightGray,
  );

  // 3. SEPIA TOKENS
  static final _sepiaTokens = AppColorsExtension(
    primary: SepiaPalette.mediumDarkBrown,
    secondary: SepiaPalette.mediumBrown,
    textOnLight: SepiaPalette.mediumDarkBrown,
    textOnDark: SepiaPalette.almostWhiteTan,
    iconOnLight: SepiaPalette.mediumDarkGray,
    iconOnDark: SepiaPalette.almostWhiteTan,
    background: SepiaPalette.almostWhiteTan,
    surface: SepiaPalette.mediumBrown,
    accent: SepiaPalette.mediumBrown,
    divider: SepiaPalette.mediumDarkBrown,
    icon: SepiaPalette.mediumDarkGray,
    inputBackground: SepiaPalette.white,
    inputBorder: SepiaPalette.lightTan,
    inputText: SepiaPalette.mediumDarkGray,
    inputAccent: SepiaPalette.lightTan,
    readerSelectorBackground: SepiaPalette.mediumBrown,
    readerText: SepiaPalette.mediumDarkGray,
    readerRedLetter: ReaderTextPalette.redLetter,
    readerAddArticle: ReaderTextPalette.addArticle,
    readerAddExtra: ReaderTextPalette.addExtra,
    readerCopulaPink: ReaderTextPalette.addCopula,
  );

  static final _sepiaTextSelectionTokens = const TextSelectionThemeData(
    cursorColor: SepiaPalette.mediumDarkBrown,
    selectionColor: SepiaPalette.lightTan,
    selectionHandleColor: SepiaPalette.mediumBrown,
  );

  // 4. HIGH CONTRAST TOKENS
  static final _contrastTokens = AppColorsExtension(
    primary: HighContrastPalette.white,
    secondary: HighContrastPalette.white,
    textOnLight: HighContrastPalette.black,
    textOnDark: HighContrastPalette.white,
    iconOnLight: HighContrastPalette.black,
    iconOnDark: HighContrastPalette.white,
    background: HighContrastPalette.black,
    surface: HighContrastPalette.black,
    accent: HighContrastPalette.white,
    divider: HighContrastPalette.white,
    icon: HighContrastPalette.white,
    inputBackground: HighContrastPalette.black,
    inputBorder: HighContrastPalette.white,
    inputText: HighContrastPalette.white,
    inputAccent: HighContrastPalette.white,
    readerSelectorBackground: HighContrastPalette.black,
    readerText: HighContrastPalette.white,
    readerRedLetter: ReaderTextPalette.redLetter,
    readerAddArticle: ReaderTextPalette.addArticle,
    readerAddExtra: ReaderTextPalette.addExtra,
    readerCopulaPink: ReaderTextPalette.addCopula,
  );

  static final _contrastTextSelectionTokens = const TextSelectionThemeData(
    cursorColor: HighContrastPalette.white,
    selectionColor: HighContrastPalette.white,
    selectionHandleColor: HighContrastPalette.white,
  );

  static AppColorsExtension getThemeDefaultTokens() => _lightTokens;

  static ThemeData getTheme(AppTheme type) {
    switch (type) {
      case AppTheme.light:
        return _createTheme(ThemeData.light(), _lightTokens, _lightTextSelectionTokens);
      case AppTheme.dark:
        return _createTheme(ThemeData.dark(), _darkTokens, _darkTextSelectionTokens);
      case AppTheme.sepia:
        return _createTheme(ThemeData.light(), _sepiaTokens, _sepiaTextSelectionTokens);
      case AppTheme.contrast:
        return _createTheme(ThemeData.dark(), _contrastTokens, _contrastTextSelectionTokens);
    }
  }

  static ThemeData _createTheme(
      ThemeData baseTheme, AppColorsExtension tokens, TextSelectionThemeData textSelectionThemeData) {
    return baseTheme.copyWith(
      brightness: baseTheme.brightness,
      scaffoldBackgroundColor: tokens.background,
      canvasColor: tokens.background,
      cardColor: tokens.background,
      dividerColor: tokens.divider,
      textSelectionTheme: textSelectionThemeData,
      colorScheme: baseTheme.colorScheme.copyWith(
        surface: tokens.background,
        surfaceContainer: tokens.background,
        brightness: baseTheme.brightness,
      ),
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeForwardsPageTransitionsBuilder(
            backgroundColor: tokens.background,
          ),
        },
      ),
      extensions: [tokens],
    );
  }
}

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension({
    required this.primary,
    required this.secondary,
    required this.textOnLight,
    required this.textOnDark,
    required this.iconOnLight,
    required this.iconOnDark,
    required this.background,
    required this.surface,
    required this.accent,
    required this.divider,
    required this.icon,
    required this.inputBackground,
    required this.inputBorder,
    required this.inputText,
    required this.inputAccent,
    required this.readerSelectorBackground,
    required this.readerText,
    required this.readerRedLetter,
    required this.readerAddArticle,
    required this.readerAddExtra,
    required this.readerCopulaPink,
  });

  final Color primary,
      secondary,
      textOnLight,
      textOnDark,
      iconOnLight,
      iconOnDark,
      background,
      surface,
      accent,
      divider,
      icon,
      inputBackground,
      inputBorder,
      inputText,
      inputAccent,
      readerSelectorBackground,
      readerText,
      readerRedLetter,
      readerAddArticle,
      readerAddExtra,
      readerCopulaPink;

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? textOnLight,
    Color? textOnDark,
    Color? iconOnLight,
    Color? iconOnDark,
    Color? background,
    Color? surface,
    Color? accent,
    Color? divider,
    Color? icon,
    Color? inputBackground,
    Color? inputBorder,
    Color? inputText,
    Color? inputAccent,
    Color? readerSelectorBackground,
    Color? readerText,
    Color? readerRedLetter,
    Color? readerAddArticle,
    Color? readerAddExtra,
    Color? readerCopulaPink,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      textOnLight: textOnLight ?? this.textOnLight,
      textOnDark: textOnDark ?? this.textOnDark,
      iconOnLight: iconOnLight ?? this.iconOnLight,
      iconOnDark: iconOnDark ?? this.iconOnDark,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      accent: accent ?? this.accent,
      divider: divider ?? this.divider,
      icon: icon ?? this.icon,
      inputBackground: inputBackground ?? this.inputBackground,
      inputBorder: inputBorder ?? this.inputBorder,
      inputText: inputText ?? this.inputText,
      inputAccent: inputAccent ?? this.inputAccent,
      readerSelectorBackground: readerSelectorBackground ?? this.readerSelectorBackground,
      readerText: readerText ?? this.readerText,
      readerRedLetter: readerRedLetter ?? this.readerRedLetter,
      readerAddArticle: readerAddArticle ?? this.readerAddArticle,
      readerAddExtra: readerAddExtra ?? this.readerAddExtra,
      readerCopulaPink: readerCopulaPink ?? this.readerCopulaPink,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(covariant ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      textOnLight: Color.lerp(textOnLight, other.textOnLight, t)!,
      textOnDark: Color.lerp(textOnDark, other.textOnDark, t)!,
      iconOnLight: Color.lerp(iconOnLight, other.iconOnLight, t)!,
      iconOnDark: Color.lerp(iconOnDark, other.iconOnDark, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      icon: Color.lerp(icon, other.icon, t)!,
      inputBackground: Color.lerp(inputBackground, other.inputBackground, t)!,
      inputBorder: Color.lerp(inputBorder, other.inputBorder, t)!,
      inputText: Color.lerp(inputText, other.inputText, t)!,
      inputAccent: Color.lerp(inputAccent, other.inputAccent, t)!,
      readerSelectorBackground: Color.lerp(inputAccent, other.inputAccent, t)!,
      readerText: Color.lerp(readerText, other.readerText, t)!,
      readerRedLetter: Color.lerp(readerRedLetter, other.readerRedLetter, t)!,
      readerAddArticle: Color.lerp(readerAddArticle, other.readerAddArticle, t)!,
      readerAddExtra: Color.lerp(readerAddExtra, other.readerAddExtra, t)!,
      readerCopulaPink: Color.lerp(readerCopulaPink, other.readerCopulaPink, t)!,
    );
  }
}

extension AppThemeContextExtension on BuildContext {
  AppColorsExtension get appColors {
    return Theme.of(this).extension<AppColorsExtension>() ?? AppThemes.getThemeDefaultTokens();
  }

  bool get isDark => Theme.of(this).brightness == Brightness.dark;
}

extension AppThemeMetaData on AppTheme {
  String get displayName {
    switch (this) {
      case AppTheme.light:
        return 'Light';
      case AppTheme.dark:
        return 'Dark';
      case AppTheme.sepia:
        return 'Sepia';
      case AppTheme.contrast:
        return 'Contrast';
    }
  }

  AppColorsExtension get _previewTokens {
    switch (this) {
      case AppTheme.light:
        return AppThemes._lightTokens;
      case AppTheme.dark:
        return AppThemes._darkTokens;
      case AppTheme.sepia:
        return AppThemes._sepiaTokens;
      case AppTheme.contrast:
        return AppThemes._contrastTokens;
    }
  }

  Color get accentColor => _previewTokens.accent;
  Color get textColor => _previewTokens.readerText;
  Color get foregroundColor {
    if (_previewTokens.background == HighContrastPalette.black) {
      return HighContrastPalette.white;
    }
    if (_previewTokens.background == DarkPalette.almostBlack) {
      return DarkPalette.mediumLightGray;
    }
    return _previewTokens.surface;
  }

  Color get backgroundColor => _previewTokens.background;
}
