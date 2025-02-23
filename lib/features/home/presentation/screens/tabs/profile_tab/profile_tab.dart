import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/profile_tab/widgets/notificiation_section.dart';
import 'package:flutter/material.dart';

import '../../../widgets/friend_bar.dart';
import 'widgets/friends_section.dart';
import 'widgets/gender_preference_section.dart';
import 'widgets/personality_modes_section.dart';
import 'widgets/preference_dropdowns.dart';
import 'widgets/premium_section.dart';
import 'widgets/profile_header.dart';
import 'widgets/stats_bar.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  int selectedGenderIndex = 0;
  FriendBar? selectedFriend;
  String? selectedBdsmMode;
  String? selectedRole;
  String? selectedPetPlay;
  String? selectedPersonalityMode;

  final url =
      'https://s3-alpha-sig.figma.com/img/9580/54b4/2e7a7e5b64d6b1ed5716ce40c594ccba?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pv3doOe~vizzjUDWdCtsfrHiRl7h2qg-O3Y7YNJSf1n8UNfpJthEvgxkP4zQvAi~q5wfFAeU9TxmmomMSljY5YionqQU2uKXuqHasPOnnrm5hreMdu4NORo5AZ1qOCoPrZGun4rX5zu6wYBZBlTdb2YP6npFQc-~o28X6jeJ6JnIacWb66mR5fkzeAZ0FjzpWgT1K9BMhz4tBMboC9x86G-8eqeMMpnbSNiLurMxydOrk8HcNMngsIFVkzkAV2VgLlEUBCXQKY65oXpe07QqMvVA~fmBzBHxsXiR8g8Vept06~erZe7mZ50R53~wMKcJY2plpprL7A3I4GZEpdVBpA__';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 5,
        children: [
          ProfileHeader(
            imageUrl: url,
            name: 'Tam ad',
            email: 'e posta',
          ),
          const SizedBox(height: 10),
          StatsBar(),
          const SizedBox(height: 10),
          PremiumSection(),
          const SizedBox(height: 20),
          FriendSelectionSection(
            selectedFriend: selectedFriend,
            onFriendChanged: (FriendBar? friend) {
              setState(() {
                selectedFriend = friend;
              });
            },
          ),
          const SizedBox(height: 20),
          GenderPreferenceSection(
            selectedIndex: selectedGenderIndex,
            onIndexChanged: (index) {
              setState(() {
                selectedGenderIndex = index!;
              });
            },
          ),
          const SizedBox(height: 20),
          PreferenceDropdowns(
            selectedBdsmMode: selectedBdsmMode,
            selectedRole: selectedRole,
            selectedPetPlay: selectedPetPlay,
            onBdsmModeChanged: (value) {
              setState(() {
                selectedBdsmMode = value;
              });
            },
            onRoleChanged: (value) {
              setState(() {
                selectedRole = value;
              });
            },
            onPetPlayChanged: (value) {
              setState(() {
                selectedPetPlay = value;
              });
            },
          ),
          const SizedBox(height: 20),
          PersonalityModesSection(),
          const SizedBox(height: 20),
          // bildirim ayarları section
          NotificationSettingsSection(),
          const SizedBox(height: 20),
          ListTile(),
          const SizedBox(height: 150),
        ],
      ),
    );
  }
}
