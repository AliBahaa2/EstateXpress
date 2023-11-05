import 'package:express/pages/Login_screen.dart';
import 'package:flutter/material.dart';
import '../components/material_Button.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:express/pages/HomeScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          //الصورة الي بالخلفية
           SizedBox(
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
                          ' انشاء حساب ',
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

                        SizedBox(height: 3.h),
                        //ادخال كلمة المرور
                        TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            labelText: '  تأكيد كلمة المرور',
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
                          name: ' انشاء حساب',
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
                              'هل تمتلك حساب؟',
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
                                          const LoginScreen())),
                              child: Text(
                                '   تسجيل الدخول  ',
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
