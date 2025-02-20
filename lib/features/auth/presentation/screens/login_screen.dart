import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:baddies_ai_task/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(Assets.images.baddies_logo_png),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            context.translate.hello,
            style: context.textTheme.displayMedium,
          ),
          Text(
            context.translate.lorem,
            style: context.textTheme.bodyLarge!.copyWith(fontSize: 13),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppPalette.blackFogTransparent,
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: AppPalette.lightSteelBlueTransparent,
                filled: true,
                border: InputBorder.none,
                hintText: context.translate.email,
                hintStyle: context.textTheme.bodyLarge!.copyWith(fontSize: 12),
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
          ),
          // şifremi unuttum
          InkWell(
            onTap: () {},
            child: Text(
              context.translate.forgat_pass,
              style: context.textTheme.bodyLarge!.copyWith(fontSize: 12),
            ),
          ),
          // buton
          InkWell(
            onTap: () {},
            child: Container(
              height: kToolbarHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppPalette.pink,
                // border: Border.all(),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  context.translate.login,
                  style: context.textTheme.bodyLarge!.copyWith(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
