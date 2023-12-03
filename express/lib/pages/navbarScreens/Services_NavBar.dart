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
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.white,
              ),
              height: 12.h,
              child: Padding(
                padding: EdgeInsets.only(left: 7.w, right: 7.w, top: 3.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'الخدمات',
                        style: TextStyle(
                          fontFamily: 'cairo',
                          fontSize: 25.dp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: const Placeholder(),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: const Placeholder(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: const Placeholder(),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: const Placeholder(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: const Placeholder(),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: const Placeholder(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: const Placeholder(),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 30.w,
                          child: const Placeholder(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
