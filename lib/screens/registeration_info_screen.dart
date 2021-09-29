import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/request_alert_screen.dart';
import 'package:mentor_me/widgets/login_tf.dart';

class RegisInfo extends StatelessWidget {



  @override
  Widget build(BuildContext context) {



    return Directionality(
      textDirection: TextDirection.rtl,
      child:  Scaffold(
        appBar: AppBar(
          backgroundColor: b,
          elevation: 0,
          title: const Text(
            "معلومات الحجز",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(

                  children:  [
                    const LoginTF("جاستن بيبر", "اسم المستفيد", false,TextInputType.text),
                    const SizedBox(
                      height: 20,
                    ),const LoginTF("تاريخ الاستشارة", "", false,TextInputType.datetime),
                    const SizedBox(
                      height: 20,
                    ),const LoginTF("وقت الاستشارة", "", false,TextInputType.datetime),
                    const SizedBox(
                      height: 20,
                    ),const LoginTF("مدة الاستشارة", "", false,TextInputType.number),
                    const SizedBox(
                      height: 20,
                    ),const LoginTF("الملاحظات", "", false,TextInputType.multiline),
                    const SizedBox(
                      height: 180,
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed:()=> {showDialog(
                            context: context,
                            builder: (_) => RequestAlert()
                        )},
                        child: const Text(
                          "إرسال",
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
            ],
          ),
        ),
      ),
    );
  }
}
