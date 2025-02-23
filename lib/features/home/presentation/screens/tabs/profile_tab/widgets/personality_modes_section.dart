import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import 'personaliy_mode_chip.dart';

class PersonalityModesSection extends StatelessWidget {
  const PersonalityModesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final personalityModeList = [
      context.translate.gentle_and_romantic,
      context.translate.intense_and_passionate,
      context.translate.angry,
      context.translate.sexual_exploration,
      context.translate.playful_and_jokey,
      context.translate.flirtatious,
      context.translate.excited_and_curious,
      context.translate.passionate,
      context.translate.ambitious,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.translate.sexual_personality_modes,
          style: context.textStyles.headlineMedium.copyWith(fontSize: 12),
        ),
        const SizedBox(height: 15),
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: personalityModeList.map((mode) {
              return PersonalityModeChip(text: mode);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
