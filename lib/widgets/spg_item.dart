import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/provider_screen.dart';

class SGItem extends StatelessWidget {
  final String t;
  final Color c;

  const SGItem(this.t, this.c);

  void provider(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return  Provider();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: () => provider(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Stack(children: [
                Image.asset(
                  image1,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 10,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle,
                        color: c,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        t,
                        style: TextStyle(
                          color: c,
                          fontSize: 10
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "اسم مقدم الخدمة",
              style: TextStyle(
                fontSize: 14,
                color: b,
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.black12,
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.black12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
