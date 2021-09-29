import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/article_screen.dart';

class HomeGridItem extends StatelessWidget {
  const HomeGridItem({Key? key}) : super(key: key);

  void toArticle(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Article();
    }));
  }
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>toArticle(context),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            child: Image.asset(
              image1,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "اسم المقال",
            style: TextStyle(
              fontSize: 16,
              color: b,
            ),
          ),
        ],
      ),
    );
  }
}
