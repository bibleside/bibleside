import 'package:material_ui/material_ui.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../../../common/themes.dart';
import 'searchbar_model.dart';

class Searchbar extends StackedView<SearchbarModel> {
  const Searchbar({
    super.key,
    required this.onSearch,
  });

  final Function(String) onSearch;

  @override
  Widget builder(
    BuildContext context,
    SearchbarModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        textInputAction: TextInputAction.search,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          prefixIcon: PhosphorIcon(
            PhosphorIconsBold.magnifyingGlass,
            color: context.appColors.primary,
            size: 18.0,
            semanticLabel: 'Search',
          ),
          prefixIconColor: context.appColors.primary,
          filled: true,
          fillColor: context.appColors.inputBackground,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.appColors.inputBorder),
            borderRadius: BorderRadius.circular(100.00),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.appColors.primary),
            borderRadius: BorderRadius.circular(100.00),
          ),
          hintText: 'Search…',
          hintStyle: TextStyle(
            color: context.appColors.secondary,
            fontSize: 15.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        onSubmitted: (value) => onSearch(value),
      ),
    );
  }

  @override
  SearchbarModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchbarModel();
}
