import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/forget_password_sec_screen.dart';
import 'package:mentor_me/widgets/passcode_block.dart';

class Passcode extends StatelessWidget {
  const Passcode({Key? key}) : super(key: key);

  void secScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const ForgetPassword2();
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
            const SizedBox(
              width: 400,
              child: Text(
                "كود التحقق",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                PasscodeBlock(),
                SizedBox(
                  width: 30,
                ),
                PasscodeBlock(),
                SizedBox(
                  width: 30,
                ),
                PasscodeBlock(),
                SizedBox(
                  width: 30,
                ),
                PasscodeBlock(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: ()=> secScreen(context),
                child: const Text(
                  "تأكيد",
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

          ],
        ),
      ),
    ));
  }
}
