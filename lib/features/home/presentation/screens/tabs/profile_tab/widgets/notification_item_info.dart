import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

class NotificationItemInfo extends StatelessWidget {
  final String icon;
  final String title;

  const NotificationItemInfo({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Image.asset(
          icon,
          color: AppPalette.darkBlue,
        ),
        Text(
          title,
          style: context.textStyles.bodyMedium.copyWith(
            fontSize: 12,
            color: AppPalette.mutedBlue,
          ),
        ),
      ],
    );
  }
}
