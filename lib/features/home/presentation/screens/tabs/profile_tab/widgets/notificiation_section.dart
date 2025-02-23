import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';
import 'notification_toggle_item.dart';

class NotificationSettingsSection extends StatefulWidget {
  const NotificationSettingsSection({super.key});

  @override
  State<NotificationSettingsSection> createState() =>
      _NotificationSettingsSectionState();
}

class _NotificationSettingsSectionState
    extends State<NotificationSettingsSection> {
  bool? messagesNotification;
  bool? photosNotification;
  bool? clothesNotification;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Text(
          context.translate.notification_settings,
          style: context.textStyles.headlineMedium.copyWith(
            fontSize: 16,
            color: AppPalette.darkGrey,
          ),
        ),
        // mesaj bildirimleri
        NotificationToggleItem(
          icon: context.assets.icons.chat_pro_png,
          title: context.translate.messages,
          value: messagesNotification ?? true,
          onChanged: (value) {
            setState(() {
              messagesNotification = value;
            });
          },
        ),
        // fotograf bildirimleri
        NotificationToggleItem(
          icon: context.assets.icons.image_pro_png,
          title: context.translate.photos,
          value: photosNotification ?? true,
          onChanged: (value) {
            setState(() {
              photosNotification = value;
            });
          },
        ),
        // kıyafet bildirimleri
        NotificationToggleItem(
          icon: context.assets.icons.hat_pro_png,
          title: context.translate.clothes,
          value: clothesNotification ?? false,
          onChanged: (value) {
            setState(() {
              clothesNotification = value;
            });
          },
        ),
      ],
    );
  }
}
