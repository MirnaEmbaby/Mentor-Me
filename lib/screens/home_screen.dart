import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/drawer_screen.dart';
import 'package:mentor_me/screens/notifications_screen.dart';
import 'package:mentor_me/widgets/department.dart';
import 'package:mentor_me/widgets/home_grid.dart';
import 'package:mentor_me/widgets/homepage_carousel.dart';

class Home extends StatelessWidget {
  void drawer(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return MyDrawer();
    }));
  }
  void notifications(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return Notifications();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: b,
          elevation: 0,
          title: const Text(
            "الرئيسية",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => notifications(context),
              icon: const Icon(Icons.notifications),
            ),

            IconButton(
              onPressed: () => drawer(context),
              icon: const Icon(Icons.menu),
            ),
            const SizedBox(
              width: 25,
            ),
          ],
          actionsIconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: b,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(100),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: HomeCarousel(),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                alignment: Alignment.topRight,
                child: const Text(
                  "الأقسام",
                  style: TextStyle(
                    color: b,
                    fontSize: 28,
                  ),
                ),
              ),
              const Department(),
              const Department(),
              const Department(),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                alignment: Alignment.topRight,
                child: const Text(
                  "معلومات ومقالات",
                  style: TextStyle(
                    color: b,
                    fontSize: 28,
                  ),
                ),
              ),
              const SizedBox(
                width: 400,
                height: 400,
                child: HomeGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
