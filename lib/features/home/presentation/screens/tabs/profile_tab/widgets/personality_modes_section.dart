import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';
import 'personaliy_mode_chip.dart';

class PersonalityModesSection extends StatefulWidget {
  final Function(List<String>)? onSelectionChanged;

  const PersonalityModesSection({this.onSelectionChanged, super.key});

  @override
  State<PersonalityModesSection> createState() =>
      _PersonalityModesSectionState();
}

class _PersonalityModesSectionState extends State<PersonalityModesSection> {
  final List<String> selectedModes = [];

  void _handleChipTap(String mode) {
    setState(() {
      if (selectedModes.contains(mode)) {
        selectedModes.remove(mode);
      } else {
        selectedModes.add(mode);
      }
    });
    widget.onSelectionChanged?.call(List.from(selectedModes));
  }

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
              final isSelected = selectedModes.contains(mode);
              return PersonalityModeChip(
                text: mode,
                isSelected: isSelected,
                onTap: _handleChipTap,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
