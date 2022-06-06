import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  CustomEntryField({Key? key}) : super(key: key);
  late String hint;
  late TextEditingController controller;
  late bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: TextField(
        // textAlignVertical: ,
        // controller: controller,
        decoration: InputDecoration(),
      ),
    );
  }
}
