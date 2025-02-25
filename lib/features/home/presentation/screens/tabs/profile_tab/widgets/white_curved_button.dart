import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class WhiteCurvedButton extends StatelessWidget {
  final String buttonText;
  final Function() onTap;
  final double? height;
  final double? width;
  const WhiteCurvedButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        width: width ?? double.infinity,
        height: height ?? kToolbarHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              height == null ? (kToolbarHeight / 2) : (height! / 2)),
          border: Border.all(
            color: AppPalette.darkGreyTransparent,
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: context.textStyles.bodyMedium.copyWith(
              fontSize: 12,
              color: AppPalette.mutedBlue,
            ),
          ),
        ),
      ),
    );
  }
}
