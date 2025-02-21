import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:baddies_ai_task/features/home/presentation/widgets/circle_pink_button.dart';
import 'package:flutter/material.dart';

import '../widgets/circle_search_button.dart';
import '../widgets/mini_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 5,
          children: [
            Image.asset(
              context.assets.icons.planet14_png,
              height: 18,
            ),
            Text(
              context.translate.ai_friend,
              style: context.textStyles.labelMedium.copyWith(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 3),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.green,
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
          ),
        ],
      ),
      body: Column(
        children: [
          // header ve arama butonu
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${context.translate.welcome_two} 👋',
                      style: context.textStyles.headlineLarge),
                  Text(
                    context.translate.choose_your_friend,
                    style: context.textStyles.bodyMedium.copyWith(
                      color: AppPalette.darkBlueTransparent,
                    ),
                  ),
                ],
              ),
              CircleSearchButton(
                onTap: () {
                  // TODO: Implement search functionality
                },
              ),
            ],
          ),
          // chipler
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: kToolbarHeight,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Chip(
                    label: Text('Chip $index'),
                  );
                },
              ),
            ),
          ),
          Text('text'),
        ],
      ),
    );
  }
}
