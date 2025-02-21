import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_palette.dart';
import '../../widgets/circle_search_button.dart';
import '../../widgets/profile_card.dart';
import '../../widgets/selectable_chip_list.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SelectableChipList(),
        // cardlar
        ProfileCard(
          name: 'Thyraxis',
          imageUrl: 'https://avatar.iran.liara.run/public/14',
          width: 300,
          height: 400,
        ),

        Text('text'),
      ],
    );
  }
}
