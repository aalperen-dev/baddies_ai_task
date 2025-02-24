import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

// TODO: api'den gelecek dataya göre editlenecek.
// constructor olarak istenen bilgiler eklenecek.
class ChatPreview extends StatelessWidget {
  const ChatPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // TODO: chat detayına yönlendirilecek
      },
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 23,
            child: FlutterLogo(),
          ),
          Positioned(
            right: -3,
            child: Text(
              '·',
              style: TextStyle(
                fontSize: 50,
                color: Colors.green,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
      title: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ai arkadaşın adı
            Text(
              'Vespera',
              style: context.textStyles.headlineLarge.copyWith(
                fontSize: 12,
                color: AppPalette.mutedBlue,
              ),
            ),
            // son mesaj
            Text(
              'Nabersin, Nasılsın!',
              style: context.textStyles.bodyMedium.copyWith(
                fontSize: 13,
                color: AppPalette.steelBlue,
              ),
            ),
          ],
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 6.5,
            backgroundColor: AppPalette.pink,
            // okunmamış mesaj sayısı
            child: Text(
              '4',
              style: context.textStyles.headlineMedium
                  .copyWith(fontSize: 10, color: AppPalette.white),
            ),
          ),
          const SizedBox(height: 5),
          // saat bilgisi
          Text(
            '22:44',
            style: context.textStyles.headlineMedium.copyWith(
              fontSize: 12,
              color: AppPalette.frostedGrey,
            ),
          ),
        ],
      ),
    );
  }
}
