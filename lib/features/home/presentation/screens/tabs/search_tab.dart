import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});
  final double height = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //
          const SizedBox(height: 50),
          // test

          IntrinsicWidth(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
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
                  'TEXT' * 3,
                  style: context.textStyles.headlineLarge.copyWith(
                    fontSize: 12,
                    color: AppPalette.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
