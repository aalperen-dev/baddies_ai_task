import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:flutter/material.dart';

import '../../../../../data/models/friend_model.dart';
import 'friend_bar.dart';
import 'custom_dropdown_button.dart';

class FriendSelectionSection extends StatelessWidget {
  final FriendModel? selectedFriend;
  final Function(FriendModel?) onFriendChanged;

  const FriendSelectionSection({
    required this.selectedFriend,
    required this.onFriendChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<FriendModel> aiFriendsList = [
      FriendModel(name: 'Alice', avatarUrl: 'https://i.pravatar.cc/150?img=1'),
      FriendModel(name: 'Bob', avatarUrl: 'https://i.pravatar.cc/150?img=2'),
      FriendModel(
          name: 'Charlie', avatarUrl: 'https://i.pravatar.cc/150?img=3'),
    ];
    final existingFriend =
        aiFriendsList.contains(selectedFriend) ? selectedFriend : null;

    return Column(
      children: [
        Text(
          context.translate.set_up_your_friend,
          style: context.textStyles.headlineMedium.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 10),
        CustomDropdownButton<FriendModel>(
          items: aiFriendsList,
          selectedItem: existingFriend,
          onChanged: onFriendChanged,
          itemBuilder: (friend) => FriendBar(
            friendModel: friend,
          ),
        ),
      ],
    );
  }
}
