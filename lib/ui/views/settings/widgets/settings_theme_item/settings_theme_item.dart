import 'package:material_ui/material_ui.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../../../common/enums.dart';
import '../../../../../common/themes.dart';
import 'settings_theme_item_model.dart';

class SettingsThemeItem extends StackedView<SettingsThemeItemModel> {
  const SettingsThemeItem({
    super.key,
    required this.isSelected,
    required this.theme,
    required this.onTap,
  });

  final bool isSelected;
  final AppTheme theme;
  final Function() onTap;

  @override
  Widget builder(
    BuildContext context,
    SettingsThemeItemModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          radius: 7.0,
          child: Container(
            width: 100.0,
            height: 134.0,
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 7.0),
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              border: Border.all(color: context.appColors.divider),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Column(
              children: [
                Text(
                  theme.displayName,
                  style: TextStyle(
                    color: theme.foregroundColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.1,
                  ),
                ),
                const SizedBox(height: 10.0),
                Divider(
                  height: 1.0,
                  endIndent: 15.0,
                  color: theme.foregroundColor,
                ),
                const SizedBox(height: 12.0),
                Divider(
                  height: 1.0,
                  endIndent: 35.0,
                  color: theme.foregroundColor,
                ),
                const SizedBox(height: 12.0),
                Divider(
                  height: 1.0,
                  endIndent: 23.0,
                  color: theme.foregroundColor,
                ),
                const SizedBox(height: 16.0),
                if (isSelected)
                  PhosphorIcon(
                    PhosphorIcons.checkCircle,
                    color: theme.foregroundColor,
                    size: 27.0,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SettingsThemeItemModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsThemeItemModel();
}
