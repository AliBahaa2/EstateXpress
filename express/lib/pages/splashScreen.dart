import 'package:express/pages/homeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/material_Button.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'Login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //الصورة الي بالخلفية
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image(
              image: AssetImage('lib/assets/images/background2.jpg'),
              //يملي الصورة على طول الشاشة ويحافظ على الابعاد
              fit: BoxFit.cover,
            ),
          ),

          Container(
            color: const Color.fromARGB(255, 25, 62, 122).withOpacity(0.5),
            child: Center(
              child: Column(
                children: [
                  const Spacer(),
                  //اللوكو وكلمة اهلا بك الي بالواجهة الاولى
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 28.h,
                        width: 20.w,
                        child: Image.asset('lib/assets/images/splashLogo.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اهلا بك في',
                              style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 25.dp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'Express',
                              style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 35.dp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  //العبارة التوضيحية جوة الشاشة بأول صفحة
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: 8.h, left: 10.w, right: 10.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              'يتيح لك هذا التطبيق بيع وشراء وتأجير كافة الممتلكات العقارية بكل سهولة.',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'tajawal',
                                fontSize: 16.dp,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Material_Button(
                                name: 'الدخول',
                                onpress: () {
                                  //هنا يسوي اختبار اذا المستخدم مسوي تسجيل دخول ينقله لصفحة الهوم واذا ما مسجل دخول ينقله لصفحة تسجيل الدخول
                                  FirebaseAuth.instance.currentUser == null
                                      ? Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const LoginScreen(),
                                          ),
                                        )
                                      : Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const HomeScreen(),
                                          ),
                                        );
                                }),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
