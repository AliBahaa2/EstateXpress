import 'package:express/pages/splashScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const SplashScreen()));
          },
          icon: Icon(Icons.west),
        ),
      ),
      body: const Center(child: Text('Home Screen')),
    );
  }
}
