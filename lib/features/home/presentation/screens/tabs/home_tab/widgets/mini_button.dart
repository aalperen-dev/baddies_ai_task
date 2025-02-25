import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class MiniButtonForAppbar extends StatelessWidget {
  final String imageText;
  final String assetImagePath;
  final Function()? onTap;
  const MiniButtonForAppbar({
    super.key,
    required this.imageText,
    required this.assetImagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 1,
          children: [
            Image.asset(
              assetImagePath,
              color: AppPalette.darkBlue,
            ),
            Text(
              imageText,
              style: context.textStyles.headlineMedium.copyWith(
                fontSize: 10,
                color: AppPalette.darkBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
