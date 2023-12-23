import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarFavoret extends StatefulWidget {
  const NavBarFavoret({super.key});

  @override
  State<NavBarFavoret> createState() => _NavBarFavoretState();
}

class _NavBarFavoretState extends State<NavBarFavoret>
    with SingleTickerProviderStateMixin {
  List favoritePlaces = [];
  bool isExpanded = true;
  Color _colorHeart = Colors.red;
  List data = [];

  getData() async {
    CollectionReference estate =
        FirebaseFirestore.instance.collection("estatedb");
    QuerySnapshot querySnapshot =
        await estate.where("fav", isEqualTo: true).get();
    querySnapshot.docs.forEach((element) {
      data.add(element);
    });
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
        body: ListView.builder(
            itemCount: data.length,
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemBuilder: (BuildContext context, int index) {
              return Text(
                data[index]['city'],
                style: TextStyle(color: Colors.red, fontSize: 40),
              );
            }));
  }
}
