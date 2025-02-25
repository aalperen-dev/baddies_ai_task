import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

// TODO: chat mesajı modeline göre editlenecek
// contructor'a gelen mesaj, isim ve avatar verilip dinamikleştirilecek

class RecievedChatContainer extends StatelessWidget {
  const RecievedChatContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 23,
            child: FlutterLogo(),
          ),
          Column(
            children: [
              Container(
                width: context.sizes.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    border: Border.all(
                      width: 1,
                      color: AppPalette.whiteTransparent,
                    ),
                    color: AppPalette.white),
                margin: EdgeInsets.only(
                  top: 25,
                  left: 10,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // gönderen ismi
                    Text(
                      'Shaedra',
                      style: context.textStyles.headlineLarge.copyWith(
                        fontSize: 13,
                        color: AppPalette.frostedBlack,
                      ),
                    ),
                    // mesaj içeriği
                    Text(
                      'Slipstream bake boys activities needed watches t-shaped when. Could weaponize social kimono search field plane close supervisor pulling.',
                      style: context.textStyles.bodyMedium.copyWith(
                        fontSize: 12,
                        color: AppPalette.frostedBlack,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
