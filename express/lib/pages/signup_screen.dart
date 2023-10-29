import 'package:flutter/material.dart';
//import '../components/material_Button.dart';
//import 'package:flutter_sizer/flutter_sizer.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
            child: const Center(
              child: Text('ali'),
            ),
          ),
        ],
      ),
    );
  }
}