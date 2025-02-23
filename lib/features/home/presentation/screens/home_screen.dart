import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/chat_tab.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/profile_tab/profile_tab.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/search_tab.dart';
import 'package:baddies_ai_task/features/home/presentation/widgets/circle_pink_button.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../widgets/mini_button.dart';
import 'tabs/home_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final controller = PageController();
  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    ChatTab(),
    ProfileTab(),
  ];

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 5,
          children: [
            Image.asset(
              context.assets.icons.planet14_png,
              height: 18,
            ),
            Text(
              context.translate.ai_friend,
              style: context.textStyles.labelMedium.copyWith(fontSize: 18),
            ),
          ],
        ),
        actions: [
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 3),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              spacing: 2,
              children: [
                // ödeme planı
                Row(
                  spacing: 2,
                  children: [
                    CirclePinkButton(
                      onTap: () {},
                    ),
                    Text(
                      context.translate.free,
                      style: context.textStyles.headlineLarge.copyWith(
                        fontSize: 14,
                        color: AppPalette.pink,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  indent: 8,
                  endIndent: 8,
                  color: AppPalette.steelBlue,
                ),
                // mesajlar
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
                  color: AppPalette.steelBlue,
                ),
                // resimler
                MiniButtonForAppbar(
                  imageText: '05',
                  assetImagePath: context.assets.icons.image_pro_png,
                  onTap: () {
                    // TODO: backend'den gelen resim sayısını göster
                  },
                ),
                // kullanıcı resmi
                GestureDetector(
                  onDoubleTap: () {
                    // TODO: profile sayfasına yönlendir
                  },
                  child: CircleAvatar(
                    radius: 15,
                    child: FlutterLogo(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: PageView(
        controller: controller,
        children: tabs,
        onPageChanged: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
      bottomNavigationBar: StylishBottomBar(
        currentIndex: selectedIndex,
        items: [
          BottomBarItem(
            icon: Icon(Icons.content_copy_rounded),
            title: Icon(Icons.content_copy_outlined, color: AppPalette.pink),
            selectedColor: AppPalette.pink,
            unSelectedColor: AppPalette.darkPurple,
          ),
          BottomBarItem(
            icon: Icon(Icons.search_rounded),
            title: Icon(Icons.zoom_in_rounded, color: AppPalette.pink),
            selectedColor: AppPalette.pink,
            unSelectedColor: AppPalette.darkPurple,
          ),
          BottomBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            title: Icon(Icons.chat_rounded, color: AppPalette.pink),
            selectedColor: AppPalette.pink,
            unSelectedColor: AppPalette.darkPurple,
          ),
          BottomBarItem(
            icon: Icon(Icons.person_outline_rounded),
            title: Icon(Icons.person_rounded, color: AppPalette.pink),
            selectedColor: AppPalette.pink,
            unSelectedColor: AppPalette.darkPurple,
          ),
        ],
        option: DotBarOptions(
          dotStyle: DotStyle.tile,
          inkColor: AppPalette.black,
        ),
        onTap: (index) {
          if (index == selectedIndex) return;
          controller.jumpToPage(index);
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
