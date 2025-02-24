import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:baddies_ai_task/features/home/presentation/widgets/selectable_chip_list.dart';
import 'package:flutter/material.dart';

import 'widgets/chat_preview.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Appbar
          SliverAppBar(
            floating: true,
            snap: true,
            centerTitle: true,
            title: Text(
              context.translate.your_ai_friends,
              style: context.textStyles.headlineMedium.copyWith(
                fontSize: 15,
                color: AppPalette.lightBlackFour,
              ),
            ),
            actions: [
              IconButton(
                style: ButtonStyle(
                  backgroundColor:
                      const WidgetStatePropertyAll(AppPalette.frostedBlueGrey),
                ),
                onPressed: () {
                  // TODO: Add button function
                },
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: AppPalette.lightBlackFour,
                ),
              ),
            ],
          ),

          // arama inputu ve chipler
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  _buildSearchBar(context),
                  const SizedBox(height: 10),
                  const SelectableChipList(),
                ],
              ),
            ),
          ),

          // chat'ler
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const ChatPreview(),
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppPalette.lightSteelBlueTransparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppPalette.lightBlackThree,
          width: 1,
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          fillColor: AppPalette.frostedBlueGreyTwp,
          filled: true,
          border: InputBorder.none,
          hintText: context.translate.search_messages,
          hintStyle: context.textStyles.bodyLarge.copyWith(
            fontSize: 12,
            color: AppPalette.frostedBlueGreyThree,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Image.asset(
              context.assets.icons.search_pro_png,
              color: AppPalette.frostedBlueGreyTwo,
            ),
          ),
        ),
      ),
    );
  }
}
