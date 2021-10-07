import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/widgets/spg_item.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: b,
          elevation: 0,
          title: const Text(
            "مقدمين الخدمة",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 25,
            ),
          ],
          actionsIconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: b,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.2,
                children: const [
                  SGItem("متاح الآن", Colors.green),
                  SGItem("مغلق الآن", Colors.red),
                  SGItem("متاح الآن", Colors.green),
                  SGItem("مغلق الآن", Colors.red),
                  SGItem("متاح الآن", Colors.green),
                  SGItem("مغلق الآن", Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
