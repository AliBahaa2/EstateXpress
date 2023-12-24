import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class DeteilsScreen extends StatefulWidget {
  final data;
  const DeteilsScreen({super.key, this.data});

  @override
  State<DeteilsScreen> createState() => _DeteilsScreenState();
}

class _DeteilsScreenState extends State<DeteilsScreen> {
  void _launchURL(url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  var data;

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
      body: Container(
          height: 35.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.data['url'] ?? " "),
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
