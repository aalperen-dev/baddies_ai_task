// widgets/personality_mode_chip.dart
import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../../../../../../../core/theme/app_palette.dart';

class PersonalityModeChip extends StatelessWidget {
  final String text;

  const PersonalityModeChip({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: NeonContainer(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 40,
        borderRadius: BorderRadius.circular(12),
        spreadColor: AppPalette.neonPink,
        containerColor: AppPalette.pinkTransparent,
        lightBlurRadius: 0,
        lightSpreadRadius: 0,
        borderWidth: 0,
        alignment: Alignment.center,
        child: NeonText(
          text: text,
          fontWeight: FontWeight.w700,
          textSize: 12,
          fontFamily: 'Ambit',
          spreadColor: AppPalette.pink,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
