import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class GradientTextureButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  final IconData? iconData;
  const GradientTextureButton({
    super.key,
    required this.buttonText,
    this.onTap,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kToolbarHeight / 2),
          border: Border.all(
            color: AppPalette.pinkTransparent,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        padding: EdgeInsets.all(2),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          // margin: EdgeInsets.all(2),
          height: 35,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppPalette.pink,
                blurRadius: 20.0,
                blurStyle: BlurStyle.inner,
              ),
            ],
            borderRadius: BorderRadius.circular(kToolbarHeight / 2),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                context.assets.images.pink_grain_texture_png,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // buton ikon
              Icon(
                iconData ?? Icons.flash_on_rounded,
                color: AppPalette.white,
              ),
              // buton text
              Text(
                buttonText,
                style: context.textStyles.labelMedium.copyWith(
                  color: AppPalette.white,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
