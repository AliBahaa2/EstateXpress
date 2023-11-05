import 'package:express/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class NavBarHome extends StatefulWidget {
  const NavBarHome({super.key});

  @override
  State<NavBarHome> createState() => _NavBarHomeState();
}

class _NavBarHomeState extends State<NavBarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      body: Center(
        child: Text(
          'الصفحة الرئيسية',
          style: TextStyle(
            fontFamily: 'cairo',
            fontSize: 5.h,
          ),
        ),
      ),
    );
  }
}
