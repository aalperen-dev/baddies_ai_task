import 'package:flutter/material.dart';

class FriendBar extends StatelessWidget {
  const FriendBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlutterLogo(),
        Text('Friend'),
      ],
    );
  }
}
