import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String email;

  const ProfileHeader({
    required this.imageUrl,
    required this.name,
    required this.email,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 50,
        ),
        Text(
          name,
          style: context.textStyles.headlineMedium.copyWith(fontSize: 15),
        ),
        Text(
          email,
          style: context.textStyles.bodySmall,
        ),
      ],
    );
  }
}
