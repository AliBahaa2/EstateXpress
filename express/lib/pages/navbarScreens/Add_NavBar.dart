import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class NavBarSetting extends StatelessWidget {
  const NavBarSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
      'الاضافة',
          style: TextStyle(
            fontFamily: 'cairo',
            fontSize: 5.h,
          ),
        ),
      ),
    );
  }
}
