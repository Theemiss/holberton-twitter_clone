import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  CustomEntryField({Key? key,required this.hint,required this.isPassword,required this.controller}) : super(key: key);
  late String hint ;
  late TextEditingController controller;
  late bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: TextField(
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
      ),
    );
  }
}
