import 'package:flutter/material.dart';
// import '../components/material_Button.dart';
// import 'homeScreen.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<LoginScreen> {
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
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
