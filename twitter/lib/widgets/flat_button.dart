import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  CustomFlatButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);
  late String label;
  late Function onPressed;

  @override
  Widget build(BuildContext context) {
    return (TextButton(
      child: Text(
        label,
        style: TextStyle(
            fontFamily: "Raleway",
            fontSize: 30,
            height: 1,
            fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        onPressed();
      },
    ));
  }
}
