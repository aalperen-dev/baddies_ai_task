import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import 'friend_bar.dart';
import 'custom_dropdown_button.dart';

class FriendSelectionSection extends StatelessWidget {
  final FriendBar? selectedFriend;
  final Function(FriendBar?) onFriendChanged;

  const FriendSelectionSection({
    required this.selectedFriend,
    required this.onFriendChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final aiFriendsList = [
      FriendBar(),
      FriendBar(),
      FriendBar(),
    ];

    return Column(
      children: [
        Text(
          context.translate.set_up_your_friend,
          style: context.textStyles.headlineMedium.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 10),
        CustomDropdownButton(
          items: aiFriendsList,
          selectedItem: selectedFriend,
          onChanged: onFriendChanged,
          itemBuilder: (friend) => friend,
        ),
      ],
    );
  }
}
