import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/features/home/data/models/friend_model.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/profile_tab/widgets/notificiation_section.dart';
import 'package:flutter/material.dart';

import 'widgets/friend_bar.dart';
import 'widgets/logout_button.dart';
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
  FriendModel? friendModel;
  final url =
      'https://robohash.org/2656673f34e5120aa2c135e8f9d5c483?set=set3&bgset=bg1&size=200x200';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              centerTitle: true,
              title: Text(
                context.translate.settings,
                style: context.textStyles.headlineMedium.copyWith(fontSize: 15),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
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
                    onFriendChanged: (p0) {
                      setState(() {
                        friendModel = p0;
                      });
                    },
                    selectedFriend: friendModel,
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
                  PersonalityModesSection(
                    onSelectionChanged: (p0) {},
                  ),
                  const SizedBox(height: 20),
                  NotificationSettingsSection(),
                  const SizedBox(height: 20),
                  LogoutButton(),
                  const SizedBox(height: kToolbarHeight),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
