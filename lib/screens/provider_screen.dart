import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/registeration_info_screen.dart';

class Provider extends StatelessWidget {

  void regisInfo(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return  RegisInfo();
    }));
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
            "اسم المقدم",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 170,
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
                    child: Center(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: Image.asset(
                          image1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "كتابة اسم مقدم الخدمة",
                          style: TextStyle(
                            fontSize: 16,
                            color: b,
                          ),
                        ),
                        const SizedBox(
                          width: 110,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "اسم القسم",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.red,
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.black12,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.black12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "الوصف",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        Lorem,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "الخبرات",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: b,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم تولي",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: b,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم تولي",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: b,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم تولي",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: b,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم تولي",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "سعر الاستشارة ( الساعة )",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "50 ريال",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "الجنس",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "ذكر",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 100,),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => regisInfo(context),
                        child: const Text(
                          "حجز استشارة",
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
                    SizedBox(height: 50,),
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
