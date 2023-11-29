import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Notivation extends StatelessWidget {
  const Notivation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الاشعارات ',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5.h, left: 1.w, right: 1.w),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color.fromARGB(95, 180, 176, 176)),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 10.h,
                child: Text(
                  '2023/29/11',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Text(
                      textAlign: TextAlign.end,
                      "  اهلا بك , شكرا الاستخدامك هذا التطبيق ",
                      style: TextStyle(
                          fontFamily: 'Tajawal', fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 85,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
