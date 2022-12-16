import 'package:flutter/material.dart';
import 'package:spotsapp/utils/app_colors.dart';

import '../widgets/landing_list_items.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBlack,
        leadingWidth: 50,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          decoration: const BoxDecoration(
            color: AppColors.appYellow,
            shape: BoxShape.circle,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: DropdownButton(
            value: "Soccer",
            underline: const SizedBox.shrink(),
            items: ["Soccer", "Table Tennis", "Racing"]
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: AppColors.appWhite,
                        ),
                      ),
                    ))
                .toList(),
            onChanged: (value) {},
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_month_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: 60,
              height: MediaQuery.of(context).size.height,
              color: AppColors.appBlack,
            ),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 5),
                  ...List.generate(20, ((index) => const LandingListItems()))
                      .toList(),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.appBlack,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "bar 1"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "bar 2"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "bar 3"),
        ],
      ),
    );
  }
}
