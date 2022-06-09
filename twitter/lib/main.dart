import 'package:flutter/material.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:twitter/providers/share_state.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => SharedState())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/',

        // home: ForgetPassword(),
        routes: {
          '/': (context) => SignIn(),
          '/signup': (context) => SignUp(),
          '/forgetpasssword': (context) => ForgetPassword(),
          '/home': (context) => HomeScreen()
        });
  }
}
