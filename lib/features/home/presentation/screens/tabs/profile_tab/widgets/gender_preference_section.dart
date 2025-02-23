import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import 'gender_toggle_switch.dart';

class GenderPreferenceSection extends StatelessWidget {
  final int selectedIndex;
  final Function(int?) onIndexChanged;

  const GenderPreferenceSection({
    required this.selectedIndex,
    required this.onIndexChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.translate.gender_pref,
          style: context.textStyles.headlineMedium.copyWith(fontSize: 12),
        ),
        const SizedBox(height: 15),
        GenderToggleSwitch(
          selectedIndex: selectedIndex,
          onToggle: onIndexChanged,
        ),
      ],
    );
  }
}
