import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/screens/login_screen.dart';
import 'package:mentor_me/widgets/login_tf.dart';

class ForgetPassword2 extends StatelessWidget {
  const ForgetPassword2({Key? key}) : super(key: key);

  void passcode(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return LoginScreen();
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
              "استعادة كلمة المرور",
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
            const LoginTF(
              "إدخال كلمة المرور",
              "كلمة المرور",
              true,
              TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginTF(
              "تأكيد كلمة المرور",
              "",
              true,
              TextInputType.text,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () => passcode(context),
                child: const Text(
                  "تأكيد",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: b,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
