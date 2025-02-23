// widgets/preference_dropdowns.dart
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import 'preference_dropdown_field.dart';

class PreferenceDropdowns extends StatelessWidget {
  final String? selectedBdsmMode;
  final String? selectedRole;
  final String? selectedPetPlay;
  final Function(String?) onBdsmModeChanged;
  final Function(String?) onRoleChanged;
  final Function(String?) onPetPlayChanged;

  const PreferenceDropdowns({
    required this.selectedBdsmMode,
    required this.selectedRole,
    required this.selectedPetPlay,
    required this.onBdsmModeChanged,
    required this.onRoleChanged,
    required this.onPetPlayChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PreferenceDropdownField(
          title: context.translate.bdsm_mode,
          items: [
            context.translate.humiliation,
            context.translate.domination,
            context.translate.discipline,
          ],
          selectedValue: selectedBdsmMode,
          onChanged: onBdsmModeChanged,
        ),
        const SizedBox(height: 20),
        PreferenceDropdownField(
          title: context.translate.role_play,
          items: [
            context.translate.teacher,
            context.translate.plummer,
          ],
          selectedValue: selectedRole,
          onChanged: onRoleChanged,
        ),
        const SizedBox(height: 20),
        PreferenceDropdownField(
          title: context.translate.pet_play,
          items: [
            context.translate.cat,
            context.translate.dog,
          ],
          selectedValue: selectedPetPlay,
          onChanged: onPetPlayChanged,
        ),
      ],
    );
  }
}
