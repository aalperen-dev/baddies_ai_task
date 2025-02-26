import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/features/home/presentation/widgets/gradient_texture_button.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_palette.dart';
import '../../../widgets/app_bar_actions.dart';
import 'widgets/circle_search_button.dart';
import 'widgets/profile_card.dart';
import 'widgets/selectable_chip_list.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          AppBaActions(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      // TODO: arama fonksiyonu
                    },
                  ),
                ],
              ),
              // chipler
              SelectableChipList(),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 20,
                children: [
                  ProfileCard(
                    name: 'Thyraxis',
                    isLeft: true,
                    bgColor: Colors.red,
                  ),
                  ProfileCard(
                    name: 'Thyraxis',
                    isLeft: false,
                    bgColor: AppPalette.lightBlue,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 20,
                children: [
                  ProfileCard(
                    name: 'Thyraxis',
                    isLeft: true,
                    bgColor: Colors.red,
                  ),
                  ProfileCard(
                    name: 'Thyraxis',
                    isLeft: false,
                    bgColor: AppPalette.lightBlue,
                  ),
                ],
              ),

              GradientTextureButton(
                buttonText: context.translate.create_new_ai_friend,
                iconData: Icons.star_rounded,
                onTap: () {
                  // TODO: ödeme sayfasına yönlendirme
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
