import 'package:flutter/material.dart';
import 'package:signup_with_provider/constrants.dart';

class HomScreen extends StatefulWidget {
  HomScreen({Key? key}) : super(key: key);

  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            child: Image.asset(''),
          ),
          gap20,
          Text("HI,\n\t "),
        ],
      ),
    );
  }
}
