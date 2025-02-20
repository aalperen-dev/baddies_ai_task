import 'package:flutter/material.dart';
import '../../../../core/theme/app_palette.dart';

class SquareButton extends StatelessWidget {
  final Function() onTap;
  final String assetPath;
  const SquareButton({
    super.key,
    required this.onTap,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: AppPalette.lightSteelBlueTransparent,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Center(
          child: Image.asset(
            assetPath,
          ),
        ),
      ),
    );
  }
}
