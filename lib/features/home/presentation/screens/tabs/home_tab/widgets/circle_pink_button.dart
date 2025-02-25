import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

class CirclePinkButton extends StatelessWidget {
  final Function()? onTap;
  const CirclePinkButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppPalette.pink,
          shape: BoxShape.circle,
        ),
        height: 20,
        width: 20,
        child: Center(
          child: Icon(
            Icons.keyboard_arrow_up_rounded,
            size: 12,
          ),
        ),
      ),
    );
  }
}
