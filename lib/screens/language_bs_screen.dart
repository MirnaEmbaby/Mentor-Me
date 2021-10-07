import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';

class LanguageBS extends StatelessWidget {
  const LanguageBS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          context: context,
          builder: (BuildContext context) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: 250,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Center(
                      child: Text(
                        "اللغة",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "English",
                          style: TextStyle(
                            color: b,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "عربي",
                          style: TextStyle(
                            color: b,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          "إلغاء",
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
      child: Row(
        children: const [
          Icon(
            Icons.language,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(width: 20),
          Text(
            "اللغة",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              decoration: TextDecoration.none,
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
