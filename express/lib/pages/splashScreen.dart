import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'homeScreen.dart';

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
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image(
              image: AssetImage('lib/assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 25, 62, 122).withOpacity(0.5),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 350,
                  ),
                  Animate(
                    effects: [FadeEffect(), Effect()],

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 132,
                          width: 132,
                          child: Image.asset('lib/assets/images/splashLogo.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'اهلا بك في',
                                style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                'Express',
                                style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'يتيح لك هذا التطبيق بيع وشراء وتأجير كافة الممتلكات ' ,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                
                                color: Colors.white,
                                fontFamily: 'tajawal',
                                fontSize: 16
                              ),
                            ),
                            Text(
                              ' .العقارية بكل سهولة' ,

                              style: TextStyle(
                                
                                color: Colors.white,
                                fontFamily: 'tajawal',
                                fontSize: 16
                              ),
                            ),
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
