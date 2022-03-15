import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_with_provider/constrants.dart';
import 'package:signup_with_provider/providers/auth_provider.dart';

class HomScreen extends StatefulWidget {
  const HomScreen({Key? key}) : super(key: key);

  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AuthPrivder>(context, listen: false).user!;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gap40,
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: FileImage(File(user.imagePath)),
            ),
          ),
          gap80,
          Text(
            "HI,\n\t\t\t ${user.name}",
            style: const TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
