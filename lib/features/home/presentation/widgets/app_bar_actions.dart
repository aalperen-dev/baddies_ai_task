import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_palette.dart';
import '../screens/tabs/home_tab/widgets/circle_pink_button.dart';
import '../screens/tabs/home_tab/widgets/mini_button.dart';

class AppBaActions extends StatelessWidget {
  const AppBaActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.only(left: 3),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: AppPalette.lightBlackThree,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        spacing: 2,
        children: [
          // ödeme planı
          Row(
            spacing: 2,
            children: [
              CirclePinkButton(
                onTap: () {},
              ),
              Text(
                context.translate.free,
                style: context.textStyles.headlineLarge.copyWith(
                  fontSize: 14,
                  color: AppPalette.pink,
                ),
              ),
            ],
          ),
          VerticalDivider(
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: AppPalette.steelBlue,
          ),
          // mesajlar
          MiniButtonForAppbar(
            imageText: '10',
            assetImagePath: context.assets.icons.chat_pro_png,
            onTap: () {
              // TODO: backend'den gelen mesajları göster
            },
          ),
          VerticalDivider(
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: AppPalette.steelBlue,
          ),

          // resimler
          MiniButtonForAppbar(
            imageText: '05',
            assetImagePath: context.assets.icons.image_pro_png,
            onTap: () {
              // TODO: backend'den gelen resim sayısını göster
            },
          ),
          // kullanıcı resmi
          GestureDetector(
            onDoubleTap: () {
              // TODO: profile sayfasına yönlendir
            },
            child: CircleAvatar(
              radius: 15,
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }
}
