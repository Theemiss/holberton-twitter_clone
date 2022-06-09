import 'package:flutter/material.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

void onPressed() {
  return;
}

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController,
      _nameController,
      _confirmController;
  final _formKey = GlobalKey<FormState>();
  initState() {
    this._emailController = TextEditingController();
    this._passwordController = TextEditingController();
    this._nameController = TextEditingController();
    this._confirmController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    this._emailController.dispose();
    this._passwordController.dispose();
    this._confirmController.dispose();
    this._nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Center(
                child: Container(
                  height: 150.0,
                  width: 190.0,
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Center(
                    child: Container(
                      child: Image.network(
                          'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png'),
                    ),
                  ),
                ),
              ),
            ),
            Form(
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  CustomEntryField(
                      controller: _nameController,
                      hint: "Enter Name",
                      isPassword: false),
                  CustomEntryField(
                      controller: _emailController,
                      hint: "Enter email",
                      isPassword: false),
                  CustomEntryField(
                      hint: "Enter password",
                      isPassword: true,
                      controller: _passwordController),
                  CustomEntryField(
                      hint: "Confirm password",
                      isPassword: true,
                      controller: _confirmController),
                  CustomFlatButton(label: "Submit", onPressed: onPressed)
                ],
              ),
              key: _formKey,
            )
          ],
        ),
      ),
    );
  }
}
