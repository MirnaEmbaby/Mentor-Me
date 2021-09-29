import 'package:flutter/material.dart';
import 'package:mentor_me/widgets/home_grid_item.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,

      children:  const [
        HomeGridItem(),
        HomeGridItem(),
        HomeGridItem(),
        HomeGridItem(),
      ],
    );
  }
}
