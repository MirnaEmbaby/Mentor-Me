import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';

class PasscodeBlock extends StatefulWidget {
  const PasscodeBlock({Key? key}) : super(key: key);

  @override
  _PasscodeBlockState createState() => _PasscodeBlockState();
}

class _PasscodeBlockState extends State<PasscodeBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: const TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: b,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
