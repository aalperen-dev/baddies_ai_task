import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 5,
          children: [
            Image.asset(
              context.assets.icons.planet14_png,
            ),
            Text(
              context.translate.ai_friend,
              style: context.textStyles.titleLarge,
            ),
          ],
        ),
        actions: [
          // Container(
          //   height: kToolbarHeight / 2,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: Row(
          //     children: [],
          //   ),
          // ),
        ],
      ),
      body: Container(),
    );
  }
}
