import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/screens/contact_sp_screen.dart';

class OrderDetails2 extends StatelessWidget {
  const OrderDetails2({Key? key}) : super(key: key);

  void contactsp(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const ContactSP();
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
            "تفاصيل الطلب",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: const Color.fromRGBO(250, 249, 255, 1),
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
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 600,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(250, 249, 255, 1),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: const Text(
                          "تفاصيل الحجز",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("اسم القسم"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const Text("ديكور"),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("اسم مقدم الخدمة"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const Text("جاستن بيبر"),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("تاريخ بدء الاستشارة"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const Text("26/8/2021"),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("مدة الاستشارة"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const Text("3 ساعات"),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("وقت الاستشارة"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const Text("5:00م"),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 80,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("الملاحظات"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: const Text(
                                lorem,
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("مبلغ الاستشارة"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const Text("100 ريال"),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("حالة الدفع"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const Text("تم الدفع"),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: const Text("وسيلة الدفع"),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const Text("ماستر كارد"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => contactsp(context),
                    child: const Text(
                      "تواصل مع المستشار",
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
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
