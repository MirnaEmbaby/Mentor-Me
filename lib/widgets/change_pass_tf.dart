import 'package:flutter/material.dart';

class NewTF extends StatelessWidget {
  final String ht;
  final String lt;
  final bool insertIcon;
  final TextInputType tit;

   const NewTF(this.ht, this.lt, this.insertIcon, this.tit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        keyboardType: tit,
        style: const TextStyle(fontSize: 14, height: 0.3),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.black12,
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
          suffixIcon: insertIcon == true ? const Icon(Icons.visibility) : null,
        ),
      ),
    );
  }
}
