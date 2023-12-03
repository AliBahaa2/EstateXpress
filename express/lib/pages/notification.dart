import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Notivation extends StatelessWidget {
  const Notivation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.blue,
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pushNamed("homepage");
          },
        ),
        title: const Text(
          'الاشعارات ',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color.fromARGB(95, 180, 176, 176)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 10.h,
                    child:  Padding(
                      padding:const EdgeInsets.all(16),
                      child: Text(
                        '1/12/2022',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 10.dp
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.w),
                      child: const Text(
                        textAlign: TextAlign.end,
                        " .اهلاً بك, شكرا لأستخدامك هذا التطبيق",
                        style: TextStyle(
                            fontFamily: 'Tajawal', fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
