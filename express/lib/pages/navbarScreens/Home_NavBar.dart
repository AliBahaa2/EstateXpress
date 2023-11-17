import 'package:express/widgets/Drawer.dart';
import 'package:express/widgets/customAppbar.dart';
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
      drawer:const MyDrawer(),
      body: Column(
        children: [
          const CustomAppBar(),
          Center(
            child: Text(
              'الصفحة الرئيسية',
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
