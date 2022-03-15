import 'package:flutter/material.dart';
import 'package:signup_with_provider/widgets/login_screen_widgets.dart/login_form.dart';

import '../constrants.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          gap20,
          Text(
            "Sign Up",
            textAlign: TextAlign.start,
            style: ThemeData.light().textTheme.headline2,
          ),
          gap20,
          LoginForm(),
        ],
      )),
    );
    ;
  }
}
