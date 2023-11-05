import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class NavBarSearch extends StatelessWidget {
  const NavBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'صفحة البحث',
          style: TextStyle(
            fontFamily: 'cairo',
            fontSize: 5.h,
          ),
        ),
      ),
    );
  }
}
