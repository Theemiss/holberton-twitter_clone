// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailController;
  @override
  void initState() {
    this._emailController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    this._emailController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        // iconTheme: ,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // verticalDirection: VerticalDirection.down,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: const Text(
              "Forget Password",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            // width: 300,
            // height: 100,
            child: Text(
              "Enter your email address bellow to receive password reset instructions",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          CustomEntryField(
              hint: "Enter Email",
              isPassword: false,
              controller: _emailController),
          CustomFlatButton(label: "Submit", onPressed: (){})
        ],
      ),
    );
  }
}
