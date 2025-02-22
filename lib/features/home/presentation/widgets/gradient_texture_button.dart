import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:neon_widgets/neon_widgets.dart';

class GradientTextureButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  final IconData? iconData;
  const GradientTextureButton(
      {super.key, required this.buttonText, this.onTap, this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kToolbarHeight / 2),
          border: Border.all(
            color: AppPalette.pinkTransparent,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: NeonContainer(
          spreadColor: AppPalette.pinkTransparent,
          containerColor: AppPalette.pinkTransparent,
          borderRadius: BorderRadius.circular(kToolbarHeight / 2),
          borderWidth: 2,
          lightSpreadRadius: 1,
          lightBlurRadius: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kToolbarHeight / 2),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  context.assets.images.pink_grain_texture_png,
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 5,
              children: [
                GlowIcon(
                  glowColor: AppPalette.neonPink,
                  blurRadius: 10,
                  iconData ?? Icons.flash_on_rounded,
                  color: AppPalette.white,
                ),
                GlowText(
                  buttonText,
                  style: TextStyle(color: AppPalette.white),
                  blurRadius: 10,
                  glowColor: Colors.pink.shade900,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
