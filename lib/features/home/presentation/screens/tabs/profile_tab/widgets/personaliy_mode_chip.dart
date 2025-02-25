import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

class PersonalityModeChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function(String) onTap;

  const PersonalityModeChip({
    super.key,
    required this.text,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () => onTap(text),
        child: Container(
          height: 50,
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color:
                isSelected ? Colors.transparent : AppPalette.frostedBlueGreyTwp,
            borderRadius: BorderRadius.circular(15),
            border: isSelected
                ? Border.all(color: Colors.transparent)
                : Border.all(width: 1, color: AppPalette.lightBlackThree),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: AppPalette.pink,
                      blurRadius: 10.0,
                      blurStyle: BlurStyle.inner,
                    ),
                  ]
                : [],
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: context.textStyles.bodyMedium.copyWith(
              fontSize: 12,
              color: isSelected ? AppPalette.white : AppPalette.steelBlue,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
