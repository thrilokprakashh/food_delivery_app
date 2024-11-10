import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          //tab 1
          Tab(
            icon: Icon(Icons.home),
          ),
          // tab2
          Tab(
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
