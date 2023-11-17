import 'package:express/components/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

// ignore: camel_case_types
class Material_Button extends StatelessWidget {
  final String name;
  final VoidCallback onpress;
  const Material_Button({super.key, required this.name, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 5.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MyColors().buttonColor),
          child: Center(
              child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'tajawal',
              fontSize: 20.dp,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
