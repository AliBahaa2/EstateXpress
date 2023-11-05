import 'package:flutter/material.dart';
import '../components/material_Button.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'signup_screen.dart';
import 'package:express/pages/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Directionality(
                  //هذا السطر حتى اخلي مكونات الشاشة تبدأ من اليمين لليسار, حسب اللغة العربية
                  textDirection: TextDirection.rtl,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //نص تسجيل الدخول
                        Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              fontFamily: 'cairo',
                              fontSize: 25.dp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 30.dp),
                        //ادخال البريد الالكتروني
                        TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: const InputDecoration(
                            labelText: 'البريد الالكتروني',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 131, 167, 185),
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                        SizedBox(height: 3.h),
                        //ادخال كلمة المرور
                        TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            labelText: 'كلمة المرور',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 131, 167, 185),
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.bold,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        //زر تسجيل الدخول
                        Material_Button(
                          name: 'تسجيل الدخول',
                          onpress: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const HomeScreen())),
                        ),
                        SizedBox(height: 1.h),
                        //الا تمتلك حساب؟ انشاء حساب
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ألا تمتلك حساب؟',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.dp,
                                fontFamily: 'tajawal',
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const SignUpScreen())),
                              child: Text(
                                'انشاء حساب',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 151, 233),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.dp,
                                    fontFamily: 'tajawal'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
