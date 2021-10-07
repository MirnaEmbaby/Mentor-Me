import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: b,
          elevation: 0,
          title: const Text(
            "الشروط والأحكام",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
        body: Column(
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
                children: const [
                  Text(lorem,textAlign: TextAlign.center,),
                  SizedBox(height: 10,),Text(lorem,textAlign: TextAlign.center,),
                  SizedBox(height: 10,),Text(lorem,textAlign: TextAlign.center,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
