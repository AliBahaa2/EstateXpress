import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  // const Button({super.key});
  String name;
  VoidCallback onpress;
  Color bakground = Colors.blueAccent;
  // Color colors = Colors.white;
  Button({required this.name, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 53,
          width: 322,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: bakground),
          child: Center(
              child: Text(
            name,
            // style: TextStyle(color:colors),
          )),
        ),
      ),
    );
  }
}
