import 'package:express/pages/Login_screen.dart';
import 'package:express/pages/SplashScreen.dart';
import 'package:express/pages/about.dart';
import 'package:express/pages/deteilsScreen.dart';
import 'package:express/pages/homeScreen.dart';
import 'package:express/pages/maps/2356.dart';
import 'package:express/pages/maps/2373.dart';
import 'package:express/pages/maps/2381_2.dart';
import 'package:express/pages/maps/2381.dart';
import 'package:express/pages/maps/651.dart';
import 'package:express/pages/maps/elec_2_1.dart';
import 'package:express/pages/notification.dart';
import 'package:express/pages/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/landMaps.dart';
import 'pages/navbarScreens/Home_NavBar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('-------------User is currently signed out!-------------');
      } else {
        print('-------------User is signed in!-------------');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          routes: {
            "signup": (context) => const SignUpScreen(),
            "login": (context) => const LoginScreen(),
            "homepage": (context) => const HomeScreen(),
            "notication": (context) => const Notivation(),
            "NavBarHome": (context) => const NavBarHome(),
            "LandMaps": (context) => const LandMaps(),
            "Land2381": (context) => const Land2381(),
            "Land651": (context) => const Land651(),
            "Land2356": (context) => const Land2356(),
            "Land2373": (context) => const Land2373(),
            "Land2382_2": (context) => const Land2382_2(),
            "Landelec_2_1": (context) => const Landelec_2_1(),
            "About": (context) => const About(),
            "DeteilsScreen": (context) => const DeteilsScreen(),
          },
        );
      },
    );
  }
}
