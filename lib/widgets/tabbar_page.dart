import 'package:flutter/material.dart';
import 'package:mentor_me/widgets/tabbar_item.dart';

class TabBarPage extends StatelessWidget {

  final int i;

  const TabBarPage(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBarItem(i),
        TabBarItem(i),
        TabBarItem(i),
        TabBarItem(i),
        TabBarItem(i),
        TabBarItem(i),
      ],
    );
  }
}
