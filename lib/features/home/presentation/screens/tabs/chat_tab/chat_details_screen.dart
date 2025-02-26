import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/chat_tab/widgets/chat_input_field.dart';
import 'package:baddies_ai_task/features/home/presentation/widgets/app_bar_actions.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theme/app_palette.dart';
import '../../../widgets/gradient_texture_button.dart';
import 'widgets/recieved_chat_container.dart';
import 'widgets/sent_chat_container.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: ButtonStyle(
            backgroundColor:
                const WidgetStatePropertyAll(AppPalette.blackFogTransparent),
          ),
          onPressed: () {
            context.navigator.pop();
          },
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: AppPalette.black,
          ),
        ),
        actions: [AppBaActions()],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 25,
              ),
              child: ListView(
                children: [
                  RecievedChatContainer(),
                  const SizedBox(height: 10),
                  SentChatContainer(
                    sentChat: 'deneme',
                  ),
                  // Altta sabit alanlar için ekstra boşluk
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 30,
              right: 25,
              bottom: 20,
              top: 10,
            ),
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Premium yükselt butonu
                GradientTextureButton(
                  buttonText: context.translate.upgrade_to_premium,
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                // Chat input field
                ChatInputField(
                  controller: TextEditingController(),
                  hintText: context.translate.reply,
                  // butondan yollama
                  onPressed: () {},
                  // from ile yollama
                  onSubmitted: (p0) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
