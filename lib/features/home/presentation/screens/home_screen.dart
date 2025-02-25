import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/chat_tab/chat_tab.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/profile_tab/profile_tab.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/tabs/search_tab.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'tabs/home_tab/home_tab.dart';

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
