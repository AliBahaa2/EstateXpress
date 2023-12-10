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
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 20.h,
                            width: 30.w,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'lib/assets/images/curtains_project2.jpg',
                                  ),
                                  height: 40.h,
                                  width: 60.h,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ستائر',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 20.h,
                            width: 30.w,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'lib/assets/images/swin_project.webp',
                                  ),
                                  height: 100.h,
                                  width: 100.w,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'حمام سباحه',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 20.h,
                            width: 30.w,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'lib/assets/images/server_project.jpg',
                                  ),
                                  height: 90.h,
                                  width: 60.h,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'خدمات نقل',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 20.h,
                            width: 30.w,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'lib/assets/images/enger_project.jpg',
                                  ),
                                  height: 90.h,
                                  width: 60.h,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'شركه هندسية',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 20.h,
                            width: 30.w,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'lib/assets/images/ggff.jpg',
                                  ),
                                  height: 90.h,
                                  width: 60.h,
                                  fit: BoxFit.cover,
                                ),
                                // Container(
                                //   padding: EdgeInsets.all(6),
                                //   alignment: Alignment.center,
                                //   constraints:
                                //       BoxConstraints(minHeight: 1, maxHeight: 2),
                                //   child: Icon(
                                //     Icons.chair,
                                //     color: Colors.white,
                                //     size: 10.w,
                                //   ),
                                // ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'اثاث',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 20.h,
                            width: 30.w,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'lib/assets/images/lay_project.jpg',
                                  ),
                                  height: 90.h,
                                  width: 60.h,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'محامون',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 20.h,
                            width: 30.w,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'lib/assets/images/remove_project.jpg',
                                  ),
                                  height: 90.h,
                                  width: 60.h,
                                  fit: BoxFit.cover,
                                ),
                                // Container(
                                //   padding: EdgeInsets.all(6),
                                //   alignment: Alignment.center,
                                //   constraints:
                                //       BoxConstraints(minHeight: 1, maxHeight: 2),
                                //   child: Icon(
                                //     Icons.delete,
                                //     color: Colors.white,
                                //     size: 10.w,
                                //   ),
                                // ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ازالة النفايات',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('object');
                          },
                          child: SizedBox(
                            height: 20.h,
                            width: 30.w,
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'lib/assets/images/Services/dye2.jpg',
                                  ),
                                  height: 90.h,
                                  width: 60.h,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 120.h,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'صبغ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(13)),
                                ),
                              ],
                            ),
                          ),
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
