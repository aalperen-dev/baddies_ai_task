import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/gradient_texture_button.dart';
import '../../../../widgets/white_curved_button.dart';

class PremiumSection extends StatelessWidget {
  const PremiumSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientTextureButton(
          buttonText: context.translate.upgrade_to_premium,
          onTap: () {},
        ),
        const SizedBox(height: 10),
        WhiteCurvedButton(
          buttonText: context.translate.edit_profile,
          height: 40,
          width: 165,
          onTap: () {},
        ),
      ],
    );
  }
}
