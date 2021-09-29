import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/order_details1_screen.dart';
import 'package:mentor_me/screens/order_details2_screen.dart';
import 'package:mentor_me/screens/order_details3_screen.dart';

class TabBarItem extends StatelessWidget {

  final int i;
  const TabBarItem(this.i);

  void orderdetails(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return this.i == 1? OrderDetails1() : (this.i == 2? OrderDetails2(): OrderDetails3());
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: ()=> orderdetails(context),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 80,
          width: double.maxFinite,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.asset(
                  image1,
                  fit: BoxFit.fill,
                  height: 60,
                  width: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "اسم مقدم الخدمة",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "اسم القسم",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "رقم الطلب",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "1234",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
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
