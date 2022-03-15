import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:signup_with_provider/widgets/custom_widgets/custom_elevatedbutton.dart';
import 'package:signup_with_provider/widgets/custom_widgets/custom_textform_field.dart';
import 'package:signup_with_provider/widgets/signup_screen_widgets/signup_from.dart';

import '../constrants.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
          SignUpForm(),
        ],
      )),
    );
  }
}
