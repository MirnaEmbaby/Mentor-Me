import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';
import 'package:mentor_me/screens/service_providers_screen.dart';

class Department extends StatelessWidget {
  const Department({Key? key}) : super(key: key);

  void toServers(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return  ServiceProvider();
    }));
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 200,
      width: 400,
      child: Material(
        elevation: 20,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: InkWell(
             onTap: () => toServers(context),
            child: Stack(
              children: [
                Image.asset(
                  image2,
                  width: 400,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    "اسم القسم",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 25,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
