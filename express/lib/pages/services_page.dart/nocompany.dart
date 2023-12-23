import 'package:flutter/material.dart';

class NoCompany extends StatelessWidget {
  const NoCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '!عذراً',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),
            ),
            Text(
              'لا توجد شركات متاحة',
              style: TextStyle(
                color:Colors.grey,
                fontFamily: 'tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),
            ),
          ],
        ),
      ),
    );
  }
}
