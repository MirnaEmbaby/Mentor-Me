import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/screens/orders_screen.dart';

class PaymentAlert extends StatelessWidget {
  const PaymentAlert({Key? key}) : super(key: key);

  void orders(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const Orders();
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
        "تم دفع قيمة طلبك بنجاح",
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
            onPressed: () => orders(context),
            child: const Text(
              "الذهاب للطلبات",
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
