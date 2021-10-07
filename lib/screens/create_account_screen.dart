import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/screens/activation_code_screen.dart';
import 'package:mentor_me/screens/home_screen.dart';
import 'package:mentor_me/widgets/login_tf.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  void homePage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const Home();
    }));
  }
  void activation(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const Activation();
    }));
  }

  void loginScreen(BuildContext ctx) {
    Navigator.of(ctx).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          color: Colors.white,
          child: Column(children: [
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
              "قم بإنشاء حساب",
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
            const LoginTF("الاسم", "", false,TextInputType.text),
            const SizedBox(
              height: 20,
            ),
            const LoginTF("البريد الإلكتروني", "", false,TextInputType.emailAddress),
            const SizedBox(
              height: 20,
            ),
            const LoginTF("العنوان", "", false, TextInputType.text),
            const SizedBox(
              height: 20,
            ),
            const LoginTF("الرجاء إدخال كلمة المرور", "", true, TextInputType.text),
            const SizedBox(
              height: 20,
            ),
            const LoginTF("الرجاء تأكيد كلمة المرور", "", true, TextInputType.text),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () => activation(context),
                child: const Text(
                  "تسجيل",
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
              height: 30,
            ),
            TextButton(
              onPressed: () => loginScreen(context),
              child: const Text(
                "لدي حساب بالفعل؟ تسجيل الدخول",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
