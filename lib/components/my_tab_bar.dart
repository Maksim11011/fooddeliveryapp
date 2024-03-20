import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          // 1я вкладка
          Tab(
            icon: Icon(Icons.home),
          ),

          //2я вкладка
          Tab(
            icon: Icon(Icons.settings),
          ),
          // 3я вкладка
          Tab(
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
