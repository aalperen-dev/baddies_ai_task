import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/theme/app_palette.dart';

// TODO: chat mesajı modeline göre editlenecek
// contructor'a yollanan mesaj verilip text widget'a atılcak
class SentChatContainer extends StatelessWidget {
  final String? sentChat;
  const SentChatContainer({
    super.key,
    this.sentChat,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IntrinsicWidth(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.zero,
            ),
            boxShadow: [
              BoxShadow(
                color: AppPalette.pink,
                spreadRadius: -10.0,
                blurRadius: 20.0,
                blurStyle: BlurStyle.inner,
              ),
            ],
          ),
          child: Center(
            child: Text(
              sentChat ?? 'Error!',
              style: context.textStyles.headlineLarge.copyWith(
                fontSize: 12,
                color: AppPalette.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
