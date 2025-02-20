import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_palette.dart';

class RoundedPinkButton extends StatelessWidget {
  final String buttonText;
  final Function() onTap;
  const RoundedPinkButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kToolbarHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppPalette.pink,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: context.textStyles.bodyLarge.copyWith(
              fontSize: 16,
              color: AppPalette.white,
            ),
          ),
        ),
      ),
    );
  }
}
