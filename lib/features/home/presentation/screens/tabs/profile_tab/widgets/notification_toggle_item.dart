import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';
import 'notification_item_info.dart';

class NotificationToggleItem extends StatelessWidget {
  final String icon;
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const NotificationToggleItem({
    required this.icon,
    required this.title,
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
        children: [
          NotificationItemInfo(
            icon: icon,
            title: title,
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: AppPalette.neonPink,
            activeTrackColor: AppPalette.lightBlack,
          ),
        ],
      ),
    );
  }
}
