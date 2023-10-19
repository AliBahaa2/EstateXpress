import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

// ignore: camel_case_types
class Material_Button extends StatelessWidget {
  // const Button({super.key});
  final String name;
  final VoidCallback onpress;
  final Color bakground = Colors.blueAccent;
  final Color colors = Colors.white;
  const Material_Button({required this.name, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 45.dp,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: bakground),
          child: Center(
              child: Text(
            name,
            style: TextStyle(color:colors, fontFamily: 'tajawal', fontSize: 20.dp, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
