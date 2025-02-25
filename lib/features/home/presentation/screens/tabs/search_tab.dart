import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/chat_tab/widgets/chat_input_field.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/chat_tab/widgets/simple_wicket_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

import '../../../../../core/theme/app_palette.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});
  final double height = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(height: 100),
          ChatInputField(
            controller: TextEditingController(),
            hintText: '',
          ),
        ],
      ),
    );
  }
}
