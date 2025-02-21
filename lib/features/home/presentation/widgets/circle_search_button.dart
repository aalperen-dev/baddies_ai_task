import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_palette.dart';

class CircleSearchButton extends StatelessWidget {
  final Function()? onTap;
  const CircleSearchButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppPalette.blackFogTransparent),
        ),
        child: Image.asset(
          context.assets.icons.search_pro_png,
          color: AppPalette.black,
        ),
      ),
    );
  }
}
