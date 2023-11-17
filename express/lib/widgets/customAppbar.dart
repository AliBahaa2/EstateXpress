import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => const Size.fromHeight(80);
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 22, 89, 183),
      title: const Text('fdjkg'),
      flexibleSpace: Container(
        height: 25.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
