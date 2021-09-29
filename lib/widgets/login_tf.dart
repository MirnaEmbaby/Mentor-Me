// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mentor_me/colors.dart';

class LoginTF extends StatelessWidget {
  final String ht;
  final String lt;
  final bool insertIcon;
  final TextInputType tit;

  const LoginTF(this.ht, this.lt, this.insertIcon, this.tit);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        keyboardType: tit,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 14,
          ),
          labelText: lt,
          hintText: ht,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: p,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: insertIcon == true ? const Icon(Icons.visibility) : null,
        ),
      ),
    );
  }
}
