import 'package:express/components/customAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class NavBarServices extends StatelessWidget {
  const NavBarServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const CustomAppBar(),
          Row(
            children: [
              Container(
                height: 10.h,
                width: 7.w,
                color: Colors.amber,
              )
            ],
          )
        ],
      )),
    );
  }
}
