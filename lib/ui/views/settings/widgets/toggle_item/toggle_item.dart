import 'package:material_ui/material_ui.dart';
import 'package:stacked/stacked.dart';

import '../../../../../common/themes.dart';
import 'toggle_item_model.dart';

class ToggleItem extends StackedView<ToggleItemModel> {
  const ToggleItem({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final Function(bool) onChanged;

  @override
  Widget builder(
    BuildContext context,
    ToggleItemModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: context.appColors.primary,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Switch(
            activeThumbColor: context.appColors.accent == HighContrastPalette.white || context.isDark
                ? context.appColors.background
                : context.appColors.textOnDark,
            activeTrackColor: context.appColors.accent,
            inactiveThumbColor: context.appColors.primary,
            inactiveTrackColor: context.isDark ? context.appColors.inputBackground : context.appColors.inputBorder,
            trackOutlineColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return context.appColors.accent;
              }
              return context.appColors.divider;
            }),
            value: value,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }

  @override
  ToggleItemModel viewModelBuilder(
    BuildContext context,
  ) =>
      ToggleItemModel();
}
