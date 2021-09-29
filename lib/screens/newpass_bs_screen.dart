import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/widgets/change_pass_tf.dart';

class NewPassBS extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(
        "تغيير كلمة المرور",
        style: TextStyle(
          color: b,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        showModalBottomSheet<void>(

          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  <Widget>[
                    const Text(
                      'تغيير كلمة المرور',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text("كلمة المرور القديمة"),
                    const SizedBox( height: 10),
                    const NewTF("الرجاء إدخال كلمة المرور","",true,TextInputType.text),
                    const SizedBox(height: 20), const Text("كلمة المرور الجديدة"),
                    const SizedBox( height: 10),
                    const NewTF("الرجاء إدخال كلمة المرور","",true,TextInputType.text),
                    const SizedBox(height: 20), const Text("تأكيد كلمة المرور"),
                    const SizedBox( height: 10),
                    const NewTF("الرجاء إدخال كلمة المرور","",true,TextInputType.text),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: ()=>Navigator.pop(context),
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
            );
          },
        );
      },
    );
  }
}
