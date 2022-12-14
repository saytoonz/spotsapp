import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:spotsapp/utils/app_colors.dart';

class LandingListItems extends StatelessWidget {
  const LandingListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.appDark,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
          height: 46,
          width: 46,
          decoration: const BoxDecoration(
            color: AppColors.black,
            shape: BoxShape.circle,
          ),
        ),
        title: const Text("World Cup"),
        trailing: const Icon(
          Icons.keyboard_arrow_down,
        ),
        onTap: () {},
        selectedTileColor: AppColors.appDark,
      ),
    );
  }
}
