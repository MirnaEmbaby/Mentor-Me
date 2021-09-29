import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/chats_screen.dart';
import 'package:mentor_me/screens/contact_us_screen.dart';
import 'package:mentor_me/screens/home_screen.dart';
import 'package:mentor_me/screens/language_alert_screen.dart';
import 'package:mentor_me/screens/login_screen.dart';
import 'package:mentor_me/screens/orders_screen.dart';
import 'package:mentor_me/screens/profile_screen.dart';
import 'package:mentor_me/screens/terms_screen.dart';
import 'package:mentor_me/screens/who_are_we_screen.dart';

class MyDrawer extends StatelessWidget {
  void home(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return Home();
    }));
  }

  void orders(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Orders();
    }));
  }

  void chats(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Chats();
    }));
  }

  void profile(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Profile();
    }));
  }

  void terms(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Terms();
    }));
  }

  void whoarewe(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return WhoAreWe();
    }));
  }

  void contactus(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return ContactUs();
    }));
  }

  void language(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return LanguageAlert();
    }));
  }

  void logout(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return LoginScreen();
    }));
  }

  Widget drawerItem(BuildContext ctx, IconData i, String s, Function f) {
    return InkWell(
      onTap: () => f(ctx),
      child: Row(
        children: [
          Icon(
            i,
            color: Colors.white,
            size: 25,
          ),
          const SizedBox(width: 20),
          Text(
            s,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              decoration: TextDecoration.none,
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          color: b,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        border: Border.all(color: Colors.white),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          profileImage,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "يوجد هنا اسم عشوائي",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontFamily: "Cairo"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "random.email@yahoo.com",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontFamily: "Cairo"),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                drawerItem(context, Icons.home, "الرئيسية", home),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.shopping_bag, "الطلبات", orders),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.chat_bubble, "المحادثات", chats),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.account_circle_rounded,
                    "الملف الشخصي", profile),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.contact_page_rounded,
                    "الشروط والأحكام", terms),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.info, "من نحن", whoarewe),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.call, "اتصل بنا", contactus),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.language, "اللغة", language),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.share, "مشاركة التطبيق", () {}),
                const SizedBox(
                  height: 20,
                ),
                drawerItem(context, Icons.logout, "تسجيل الخروج", logout),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
