import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';
import 'simple_wicket_widget.dart';

class ChatInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onSubmitted;
  final Function()? onPressed;
  const ChatInputField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onSubmitted,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleTicketWidget(
      borderRadius: BorderRadius.circular(kToolbarHeight / 2),
      direction: Axis.horizontal,
      position: context.sizes.width * 0.95,
      shadowColor: AppPalette.blackFogTransparent,
      child: Container(
        width: context.sizes.width,
        height: kToolbarHeight,
        alignment: Alignment.center,
        padding: EdgeInsets.all(7),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kToolbarHeight / 2),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.1),
                    blurRadius: 4,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      bottom: 15,
                    ),
                    width: context.sizes.width * 0.5,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle: context.textStyles.bodyMedium.copyWith(
                          fontSize: 12,
                          color: AppPalette.darkPurpleTransparent,
                        ),
                        border: InputBorder.none,
                      ),
                      onSubmitted: onSubmitted,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO: resim seçme fonksiyonu gelecek
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: AppPalette.frostedBlueGrey,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        context.assets.icons.image_pro_png,
                        color: AppPalette.darkBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15),
            // sent buton
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppPalette.pink,
                    blurRadius: 20.0,
                    blurStyle: BlurStyle.inner,
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                ),
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
