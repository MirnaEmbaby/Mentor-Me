import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/widgets/carousel_item.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 400,
      child: Carousel(
        boxFit: BoxFit.cover,
        dotSize: 6,
        showIndicator: true,
        dotBgColor: const Color.fromRGBO(255, 255, 255, 0),
        dotIncreasedColor: b,
        dotSpacing: 12,
        dotIncreaseSize: 10,
        images: const [
          CarouselItem(),
          CarouselItem(),
          CarouselItem(),
        ],
      ),
    );
  }
}
