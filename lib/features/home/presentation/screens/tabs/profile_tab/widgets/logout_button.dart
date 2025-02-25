import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: kToolbarHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppPalette.frostedBlueGrey,
          border: Border.all(
            width: 1,
            color: AppPalette.blackFogTransparent,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [
            Text(
              context.translate.logout,
              style: context.textStyles.headlineMedium.copyWith(
                fontSize: 15,
                color: AppPalette.mutedBlue,
              ),
            ),
            Image.asset(
              context.assets.icons.check_out_pro_png,
              color: AppPalette.mutedBlue,
            )
          ],
        ),
      ),
    );
  }
}
