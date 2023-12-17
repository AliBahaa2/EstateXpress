import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DeteilsScreen extends StatefulWidget {
  const DeteilsScreen({super.key});

  @override
  State<DeteilsScreen> createState() => _DeteilsScreenState();
}

class _DeteilsScreenState extends State<DeteilsScreen> {
  List data = [];

  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('estatedb').get();
    data.addAll(querySnapshot.docs);
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'صفحة التفاصيل',
          style: TextStyle(
            fontFamily: 'cairo',
            fontSize: 5.h,
          ),
        ),
      ),
    );
  }
}
