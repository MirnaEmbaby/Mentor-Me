import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.asset(
        image1,
        fit: BoxFit.cover,
      ),
    );
  }
}
