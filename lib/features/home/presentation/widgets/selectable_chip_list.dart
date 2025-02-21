import 'dart:developer';

import 'package:baddies_ai_task/core/extentions/l10n_exntesions.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class SelectableChipList extends StatefulWidget {
  const SelectableChipList({super.key});

  @override
  State<SelectableChipList> createState() => _SelectableChipListState();
}

class _SelectableChipListState extends State<SelectableChipList> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    final List<String> chips = [
      context.translate.all_ai_friends,
      context.translate.newest_ai_friends,
      context.translate.oldest_ai_friends,
    ];

    final List<VoidCallback> chipActions = [
      () => log("All AI Friends selected"),
      () => log("Newest AI Friends selected"),
      () => log("Oldest AI Friends selected"),
    ];

    return SizedBox(
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: (context, index) {
          bool isSelected = _selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
              chipActions[index]();
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? AppPalette.pink : AppPalette.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color:
                      isSelected ? Colors.transparent : AppPalette.lightBlack,
                ),
              ),
              child: Center(
                child: Text(
                  chips[index],
                  style: TextStyle(
                    fontWeight: isSelected ? FontWeight.w900 : FontWeight.w400,
                    fontFamily: isSelected ? 'Ambit' : 'Euclid Circular A',
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
