import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/widgets/chat_tile.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: b,
          elevation: 0,
          title: const Text(
            "المحادثات",
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
                  children: const [
                    ChatTile(),
                    ChatTile(),
                    ChatTile(),
                    ChatTile(),
                    ChatTile(),
                    ChatTile(),
                    ChatTile(),
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


