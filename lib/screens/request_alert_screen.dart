import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/screens/home_screen.dart';

class RequestAlert extends StatelessWidget {
  const RequestAlert({Key? key}) : super(key: key);

  void toHome(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const Home();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(20),
      )),
      title: const Icon(
        Icons.check_circle,
        color: b,
        size: 60,
      ),
      content: const Text(
        "تم إرسال طلبك بنجاح",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        const Center(
          child: Text(
            "برجاء مراجعة قائمة الطلبات لديك لمتابعة طلبك",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 12,
            ),
          ),
        ),
        Center(
          child: TextButton(
            onPressed: () => toHome(context),
            child: const Text(
              "الرجوع للرئيسية",
              style: TextStyle(
                  color: b,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ),
        )
      ],
    );
  }
}
