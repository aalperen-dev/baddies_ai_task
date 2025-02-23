import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../../../core/theme/app_palette.dart';

class GenderToggleSwitch extends StatelessWidget {
  final int selectedIndex;
  final Function(int?) onToggle;

  const GenderToggleSwitch({
    required this.selectedIndex,
    required this.onToggle,
    super.key,
  });

  Widget _buildToggleItem(BuildContext context,
      {required IconData icon, required String label, required int index}) {
    final isSelected = selectedIndex == index;
    final color = isSelected ? AppPalette.pink : AppPalette.steelBlue;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          label,
          style: context.textStyles.bodyMedium.copyWith(
            fontSize: 11,
            color: color,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      initialLabelIndex: selectedIndex,
      onToggle: onToggle,
      activeBgColor: [AppPalette.frostedBlueGrey],
      inactiveBgColor: AppPalette.frostedBlueGrey,
      borderWidth: 1,
      borderColor: [AppPalette.blackFogTransparent],
      dividerColor: AppPalette.lightBlack,
      dividerMargin: kToolbarHeight / 3,
      totalSwitches: 4,
      minHeight: kToolbarHeight + 5,
      cornerRadius: 18,
      minWidth: double.infinity,
      customWidgets: [
        _buildToggleItem(
          context,
          icon: FontAwesomeIcons.venus,
          label: context.translate.male,
          index: 0,
        ),
        _buildToggleItem(
          context,
          icon: FontAwesomeIcons.mars,
          label: context.translate.female,
          index: 1,
        ),
        _buildToggleItem(
          context,
          icon: FontAwesomeIcons.transgender,
          label: context.translate.transgender,
          index: 2,
        ),
        _buildToggleItem(
          context,
          icon: FontAwesomeIcons.marsDouble,
          label: context.translate.gay,
          index: 3,
        ),
      ],
    );
  }
}
