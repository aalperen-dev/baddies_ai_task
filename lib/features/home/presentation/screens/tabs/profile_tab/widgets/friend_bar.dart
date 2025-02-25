import 'package:flutter/material.dart';

import 'package:baddies_ai_task/features/home/data/models/friend_model.dart';

class FriendBar extends StatelessWidget {
  final FriendModel friendModel;
  const FriendBar({
    super.key,
    required this.friendModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(friendModel.avatarUrl),
        ),
        Text(friendModel.name),
      ],
    );
  }
}
