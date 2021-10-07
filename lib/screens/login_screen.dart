// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/screens/create_account_screen.dart';
import 'package:mentor_me/screens/forget_password_screen.dart';
import 'package:mentor_me/screens/home_screen.dart';
import 'package:mentor_me/widgets/login_tf.dart';

class LoginScreen extends StatelessWidget {
  void forgetPassword(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const ForgetPassword();
    }));
  }

  void homePage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const Home();
    }));
  }

  void createAccount(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const CreateAccount();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                mentorMeImage,
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "أهلاً بك",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontFamily: 'Cairo',
                  decoration: TextDecoration.none,
                ),
              ),
              const Text(
                "قم بتسجيل الدخول",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey,
                  fontFamily: 'Cairo',
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const LoginTF("إدخال رقم الجوال", "رقم الجوال", false,TextInputType.number),
              const SizedBox(
                height: 20,
              ),
              const LoginTF("إدخال كلمة المرور", "", true,TextInputType.text),
              Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                  child: const Text(
                    "نسيت كلمة المرور؟",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () => forgetPassword(context),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => homePage(context),
                  child: const Text(
                    "تسجيل الدخول",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: b,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => homePage(context),
                child: const Text(
                  "الدخول كزائر",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => createAccount(context),
                child: const Text(
                  "ليس لدي حساب؟ تسجيل جديد",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
