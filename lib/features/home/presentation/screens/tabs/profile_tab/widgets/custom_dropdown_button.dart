// widgets/custom_dropdown_button.dart
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

class CustomDropdownButton<T> extends StatelessWidget {
  final List<T> items;
  final T? selectedItem;
  final Function(T?) onChanged;
  final Widget Function(T) itemBuilder;

  const CustomDropdownButton({
    required this.items,
    required this.selectedItem,
    required this.onChanged,
    required this.itemBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        isExpanded: true,
        hint: itemBuilder(items[0]),
        items: items.map((item) {
          return DropdownMenuItem<T>(
            value: item,
            child: itemBuilder(item),
          );
        }).toList(),
        value: selectedItem,
        onChanged: onChanged,
        buttonStyleData: ButtonStyleData(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppPalette.frostedBlueGrey,
            border: Border.all(
              width: 1,
              color: AppPalette.blackFogTransparent,
            ),
          ),
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(Icons.keyboard_arrow_down_rounded),
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: WidgetStatePropertyAll(6),
            thumbVisibility: WidgetStatePropertyAll(true),
          ),
        ),
      ),
    );
  }
}
