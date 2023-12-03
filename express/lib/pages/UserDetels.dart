import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserDetels extends StatefulWidget {
  const UserDetels({super.key});

  @override
  State<UserDetels> createState() => _UserDetelsState();
}

class _UserDetelsState extends State<UserDetels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.blue,
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pushNamed("homepage");
          },
        ),
        title: const Text(
          'معلومات المستخدم',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    );
  }
}
