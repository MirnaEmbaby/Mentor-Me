import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/screens/newpass_bs_screen.dart';
import 'package:mentor_me/widgets/login_tf.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  void done(BuildContext ctx) {
    Navigator.pop(ctx);
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
            "الملف الشخصي",
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                          child: Image.asset(
                            profileImage,
                            width: 120,
                            height: 120,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: b,
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "جاستن بيبر",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 40),
                    const LoginTF("إدخال رقم الجوال", "رقم الجوال", false,
                        TextInputType.number),
                    const SizedBox(
                      height: 20,
                    ),
                    const LoginTF("الاسم", "", false, TextInputType.text),
                    const SizedBox(
                      height: 20,
                    ),
                    const LoginTF("البريد الإلكتروني", "", false,
                        TextInputType.emailAddress),
                    const SizedBox(
                      height: 20,
                    ),
                    const LoginTF(
                        "العنوان", "", false, TextInputType.streetAddress),
                    const SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => done(context),
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
                    const SizedBox(height: 10),
                    const NewPassBS(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
