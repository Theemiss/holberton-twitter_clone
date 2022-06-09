import 'package:flutter/material.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  initState() {
    this._emailController = TextEditingController();
    this._passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    this._emailController.dispose();
    this._passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Text("Sign In",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Center(
                    child: Container(
                        height: 150.0,
                        width: 190.0,
                        padding: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Center(
                            child: Image.network(
                                'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png'))))),
            CustomEntryField(
              controller: _emailController,
              hint: "Enter Email",
              isPassword: false,
            ),
            CustomEntryField(
                controller: _passwordController,
                hint: "Enter Password",
                isPassword: true),
            CustomFlatButton(
                label: "Submit",
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                }),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: GestureDetector(
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/signup"
                      // MaterialPageRoute<void>(
                      //   builder: (BuildContext context) => SignUp(),
                      );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/forgetpasssword");
                },
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
