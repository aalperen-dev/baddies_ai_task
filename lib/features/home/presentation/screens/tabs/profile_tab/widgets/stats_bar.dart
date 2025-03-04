import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';
import '../../home_tab/widgets/mini_button.dart';

class StatsBar extends StatelessWidget {
  const StatsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 35,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: AppPalette.lightBlackThree,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MiniButtonForAppbar(
              imageText: '10',
              assetImagePath: context.assets.icons.chat_pro_png,
              onTap: () {},
            ),
            VerticalDivider(
              indent: 8,
              endIndent: 8,
              color: AppPalette.lightBlackTwo,
            ),
            MiniButtonForAppbar(
              imageText: '05',
              assetImagePath: context.assets.icons.image_pro_png,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
