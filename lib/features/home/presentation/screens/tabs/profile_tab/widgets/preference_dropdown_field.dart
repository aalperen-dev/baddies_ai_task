import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

class PreferenceDropdownField extends StatelessWidget {
  final String title;
  final List<String> items;
  final String? selectedValue;
  final Function(String?) onChanged;

  const PreferenceDropdownField({
    required this.title,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textStyles.headlineMedium.copyWith(
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 15),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              items[0],
              style: context.textStyles.headlineMedium.copyWith(
                fontSize: 12,
                color: AppPalette.mutedBlue,
              ),
            ),
            items: items.map(
              (item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    style: context.textStyles.headlineMedium.copyWith(
                      fontSize: 12,
                      color: AppPalette.mutedBlue,
                    ),
                  ),
                );
              },
            ).toList(),
            value: selectedValue,
            onChanged: onChanged,
            buttonStyleData: ButtonStyleData(
              padding: const EdgeInsets.only(left: 14, right: 14),
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
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
              ),
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
        ),
      ],
    );
  }
}
