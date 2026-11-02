import 'package:material_ui/material_ui.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../common/enums.dart';
import '../../../common/themes.dart';
import '../../common/ui_helpers.dart';
import 'settings_viewmodel.dart';
import 'widgets/settings_category_title/settings_category_title.dart';
import 'widgets/settings_text_preview/settings_text_preview.dart';
import 'widgets/settings_theme_item/settings_theme_item.dart';
import 'widgets/toggle_item/toggle_item.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    bool isPortrait = isPortraitOrientation(context);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: viewModel.onPopInvoked,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.appColors.background,
          centerTitle: true,
          scrolledUnderElevation: 0.0,
          title: isPortrait
              ? null
              : Text(
                  'Settings',
                  style: TextStyle(
                    color: context.appColors.primary,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.2,
                  ),
                ),
        ),
        backgroundColor: context.appColors.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isPortrait)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 36.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Settings',
                            style: TextStyle(
                              color: context.appColors.primary,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SettingsTextPreview(),
                    ],
                  ),
                  Divider(
                    height: 0,
                    color: context.appColors.divider,
                  ),
                  // Text scaling
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                'Text scaling',
                                style: TextStyle(
                                  color: context.appColors.primary,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.1,
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              Text(
                                '${viewModel.textScaling.toStringAsFixed(1)}x',
                                style: TextStyle(
                                  color: context.appColors.secondary,
                                  fontSize: 15.0,
                                  letterSpacing: -0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              PhosphorIcon(
                                PhosphorIcons.magnifyingGlassMinus,
                                color: context.appColors.primary,
                                size: 20.0,
                              ),
                              Expanded(
                                child: SliderTheme(
                                  data: SliderThemeData(
                                    thumbColor: context.appColors.accent,
                                    activeTrackColor: context.appColors.accent,
                                    inactiveTrackColor: context.appColors.divider,
                                    overlayColor: Colors.transparent,
                                  ),
                                  child: Slider(
                                    value: viewModel.textScaling,
                                    min: 1.0,
                                    max: 1.5,
                                    onChanged: viewModel.changeTextScaling,
                                  ),
                                ),
                              ),
                              PhosphorIcon(
                                PhosphorIcons.magnifyingGlassPlus,
                                color: context.appColors.primary,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 0,
                    color: context.appColors.divider,
                  ),
                  // Show special markings
                  ToggleItem(
                    label: 'Show OET-LV special markings',
                    value: viewModel.showMarks,
                    onChanged: viewModel.changeShowMarks,
                  ),
                  Divider(
                    height: 0,
                    color: context.appColors.divider,
                  ),
                  // Show chapters and verses
                  ToggleItem(
                    label: 'Show chapters and verses',
                    value: viewModel.showChaptersAndVerses,
                    onChanged: viewModel.changeShowChaptersAndVerses,
                  ),
                  Divider(
                    height: 0,
                    color: context.appColors.divider,
                  ),
                  // INTERFACE
                  const SettingsCategoryTitle(
                    title: 'INTERFACE',
                  ),
                  Divider(
                    height: 0,
                    color: context.appColors.divider,
                  ),
                  // Theme
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 12.0),
                    child: Text(
                      'Theme',
                      style: TextStyle(
                        color: context.appColors.primary,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.1,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (AppTheme theme in AppTheme.values)
                          SettingsThemeItem(
                            isSelected: theme == viewModel.activeTheme,
                            theme: theme,
                            onTap: () => viewModel.onSetAppTheme(theme),
                          ),
                      ],
                    ),
                  ),

                  // ABOUT
                  const SettingsCategoryTitle(
                    title: 'ABOUT',
                  ),
                  Divider(
                    height: 0,
                    color: context.appColors.divider,
                  ),
                  // Share feedback
                  Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: viewModel.shareFeedback,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: PhosphorIcon(
                                PhosphorIcons.envelopeOpen,
                                color: context.appColors.primary,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Share feedback with the developer',
                                  style: TextStyle(
                                    color: context.appColors.primary,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Divider(
                    height: 0,
                    color: context.appColors.divider,
                  ),
                  // Visit website
                  Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: viewModel.visitWebsite,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: PhosphorIcon(
                                PhosphorIcons.globe,
                                color: context.appColors.primary,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Visit app website',
                                  style: TextStyle(
                                    color: context.appColors.primary,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 0,
                    color: context.appColors.divider,
                  ),
                  // App version
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon.png',
                          width: 36.0,
                          height: 36.0,
                        ),
                        const SizedBox(width: 8.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bibleside (alpha)',
                              style: TextStyle(
                                color: context.appColors.primary,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.1,
                              ),
                            ),
                            Text(
                              viewModel.isBusy ? '' : viewModel.data!,
                              style: TextStyle(
                                color: context.appColors.secondary,
                                height: 1.0,
                                fontSize: 10.0,
                                letterSpacing: 0.1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}
