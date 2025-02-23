import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/features/home/presentation/widgets/friend_bar.dart';
import 'package:baddies_ai_task/features/home/presentation/widgets/gradient_texture_button.dart';
import 'package:baddies_ai_task/features/home/presentation/widgets/white_curved_button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../../core/theme/app_palette.dart';
import '../../../widgets/mini_button.dart';

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
    final aiFriendsList = [
      FriendBar(),
      FriendBar(),
      FriendBar(),
    ];

    final bdsmModesList = [
      context.translate.humiliation,
      context.translate.domination,
      context.translate.discipline,
    ];
    final roleList = [
      context.translate.teacher,
      context.translate.plummer,
    ];
    final petPlayList = [
      context.translate.cat,
      context.translate.dog,
    ];
    final personalityModeList = [
      context.translate.gentle_and_romantic,
      context.translate.intense_and_passionate,
      context.translate.angry,
      context.translate.sexual_exploration,
      context.translate.playful_and_jokey,
      context.translate.flirtatious,
      context.translate.excited_and_curious,
      context.translate.passionate,
      context.translate.ambitious,
    ];

    return SingleChildScrollView(
      child: Column(
        spacing: 5,
        children: [
          // profil resmi
          CircleAvatar(
            backgroundImage: NetworkImage(url),
            radius: 50,
          ),
          // tam ad
          Text(
            'Tam ad',
            style: context.textStyles.headlineMedium.copyWith(fontSize: 15),
          ),
          // eposta
          Text(
            'e posta',
            style: context.textStyles.bodySmall,
          ),
          // chat ve resim sayısı
          Container(
            height: 35,
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: AppPalette.lightBlackThree,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MiniButtonForAppbar(
                  imageText: '10',
                  assetImagePath: context.assets.icons.chat_pro_png,
                  onTap: () {
                    // TODO: backend'den gelen mesajları göster
                  },
                ),
                VerticalDivider(
                  indent: 8,
                  endIndent: 8,
                  color: AppPalette.lightBlackTwo,
                ),
                // resimler
                MiniButtonForAppbar(
                  imageText: '05',
                  assetImagePath: context.assets.icons.image_pro_png,
                  onTap: () {
                    // TODO: backend'den gelen resim sayısını göster
                  },
                ),
              ],
            ),
          ),
          // premium yükselt butonu
          GradientTextureButton(
            buttonText: context.translate.upgrade_to_premium,
            onTap: () {},
          ),
          // profil düzenle
          WhiteCurvedButton(
            buttonText: context.translate.edit_profile,
            height: 40,
            width: 165,
            onTap: () {},
          ),
          Text(
            context.translate.set_up_your_friend,
            style: context.textStyles.headlineMedium.copyWith(fontSize: 16),
          ),
          // dropdown ai arkadaşlar
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: aiFriendsList[0],
              items: aiFriendsList.map(
                (friend) {
                  return DropdownMenuItem<FriendBar>(
                    value: friend,
                    child: friend,
                  );
                },
              ).toList(),
              value: selectedFriend,
              onChanged: (value) {
                // setState(() {
                //   selectedFriend = value;
                // });
              },
              buttonStyleData: ButtonStyleData(
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppPalette.frostedBlueGrey,
                  border: Border.all(
                    width: 1,
                    color: AppPalette.blackFogTransparent,
                  ),
                ),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                ),
              ),
              dropdownStyleData: DropdownStyleData(
                elevation: 0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppPalette.frostedBlueGrey,
                ),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(40),
                  thickness: WidgetStatePropertyAll(6),
                  thumbVisibility: WidgetStatePropertyAll(true),
                ),
              ),
            ),
          ),
          // cinsiyet tercih bölümü
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Text(
                context.translate.gender_pref,
                style: context.textStyles.headlineMedium.copyWith(
                  fontSize: 12,
                ),
              ),
              ToggleSwitch(
                initialLabelIndex: selectedGenderIndex,
                onToggle: (index) {
                  setState(() {
                    selectedGenderIndex = index!;
                  });
                },
                activeBgColor: [AppPalette.frostedBlueGrey],
                inactiveBgColor: AppPalette.frostedBlueGrey,
                borderWidth: 1,
                borderColor: [AppPalette.blackFogTransparent],
                dividerColor: AppPalette.lightBlack,
                dividerMargin: kToolbarHeight / 3,
                totalSwitches: 4,
                minHeight: kToolbarHeight + 5,
                cornerRadius: 18,
                minWidth: double.infinity,
                customWidgets: [
                  _buildToggleItem(
                    context,
                    icon: FontAwesomeIcons.venus,
                    label: context.translate.male,
                    index: 0,
                  ),
                  _buildToggleItem(
                    context,
                    icon: FontAwesomeIcons.mars,
                    label: context.translate.female,
                    index: 1,
                  ),
                  _buildToggleItem(
                    context,
                    icon: FontAwesomeIcons.transgender,
                    label: context.translate.transgender,
                    index: 2,
                  ),
                  _buildToggleItem(
                    context,
                    icon: FontAwesomeIcons.marsDouble,
                    label: context.translate.gay,
                    index: 3,
                  ),
                ],
              ),
            ],
          ),
          // bdsm mode bölümü
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Text(
                context.translate.bdsm_mode,
                style: context.textStyles.headlineMedium.copyWith(
                  fontSize: 12,
                ),
              ),
              // dropdown ai arkadaşlar
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Text(
                    bdsmModesList[0],
                    style: context.textStyles.headlineMedium.copyWith(
                      fontSize: 12,
                      color: AppPalette.mutedBlue,
                    ),
                  ),
                  items: bdsmModesList.map(
                    (mode) {
                      return DropdownMenuItem(
                        value: mode,
                        child: Text(
                          mode,
                          style: context.textStyles.headlineMedium.copyWith(
                            fontSize: 12,
                            color: AppPalette.mutedBlue,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  value: selectedBdsmMode,
                  onChanged: (value) {
                    // TODO: mode indexi alınacak
                    setState(() {
                      selectedBdsmMode = value;
                    });
                  },
                  buttonStyleData: ButtonStyleData(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppPalette.frostedBlueGrey,
                      border: Border.all(
                        width: 1,
                        color: AppPalette.blackFogTransparent,
                      ),
                    ),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: WidgetStatePropertyAll(6),
                      thumbVisibility: WidgetStatePropertyAll(true),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // role play bölümü
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Text(
                context.translate.role_play,
                style: context.textStyles.headlineMedium.copyWith(
                  fontSize: 12,
                ),
              ),
              // dropdown role play
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Text(
                    roleList[0],
                    style: context.textStyles.headlineMedium.copyWith(
                      fontSize: 12,
                      color: AppPalette.mutedBlue,
                    ),
                  ),
                  items: roleList.map(
                    (role) {
                      return DropdownMenuItem(
                        value: role,
                        child: Text(
                          role,
                          style: context.textStyles.headlineMedium.copyWith(
                            fontSize: 12,
                            color: AppPalette.mutedBlue,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  value: selectedRole,
                  onChanged: (value) {
                    // TODO: role indexi alınacak

                    setState(() {
                      selectedPetPlay = value;
                    });
                  },
                  buttonStyleData: ButtonStyleData(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppPalette.frostedBlueGrey,
                      border: Border.all(
                        width: 1,
                        color: AppPalette.blackFogTransparent,
                      ),
                    ),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: WidgetStatePropertyAll(6),
                      thumbVisibility: WidgetStatePropertyAll(true),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // pet play bölümü
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Text(
                context.translate.pet_play,
                style: context.textStyles.headlineMedium.copyWith(
                  fontSize: 12,
                ),
              ),
              // dropdown pet play
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Text(
                    petPlayList[0],
                    style: context.textStyles.headlineMedium.copyWith(
                      fontSize: 12,
                      color: AppPalette.mutedBlue,
                    ),
                  ),
                  items: petPlayList.map(
                    (pet) {
                      return DropdownMenuItem(
                        value: pet,
                        child: Text(
                          pet,
                          style: context.textStyles.headlineMedium.copyWith(
                            fontSize: 12,
                            color: AppPalette.mutedBlue,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  value: selectedRole,
                  onChanged: (value) {
                    // TODO: role indexi alınacak

                    setState(() {
                      selectedPetPlay = value;
                    });
                  },
                  buttonStyleData: ButtonStyleData(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppPalette.frostedBlueGrey,
                      border: Border.all(
                        width: 1,
                        color: AppPalette.blackFogTransparent,
                      ),
                    ),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(40),
                      thickness: WidgetStatePropertyAll(6),
                      thumbVisibility: WidgetStatePropertyAll(true),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // kişilik modları bölümü
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Text(
                context.translate.sexual_personality_modes,
                style: context.textStyles.headlineMedium.copyWith(
                  fontSize: 12,
                ),
              ),
              // kişilikler
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: personalityModeList.map((mode) {
                    return IntrinsicWidth(
                      child: NeonContainer(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        borderRadius: BorderRadius.circular(12),
                        spreadColor: AppPalette.neonPink,
                        containerColor: AppPalette.pinkTransparent,
                        lightBlurRadius: 0,
                        lightSpreadRadius: 0,
                        borderWidth: 0,
                        alignment: Alignment.center,
                        child: NeonText(
                          text: mode,
                          fontWeight: FontWeight.w700,
                          textSize: 12,
                          fontFamily: 'Ambit',
                          spreadColor: AppPalette.pink,
                          textColor: Colors.white,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),

          const SizedBox(height: 150),
        ],
      ),
    );
  }

  Widget _buildToggleItem(BuildContext context,
      {required IconData icon, required String label, required int index}) {
    final isSelected = selectedGenderIndex == index;
    final color = isSelected ? AppPalette.pink : AppPalette.steelBlue;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          label,
          style: context.textStyles.bodyMedium.copyWith(
            fontSize: 11,
            color: color,
          ),
        ),
      ],
    );
  }
}
