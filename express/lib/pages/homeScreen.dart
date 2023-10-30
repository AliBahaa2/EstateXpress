import 'package:flutter/material.dart';
//import '../widgets/customAppbar.dart';
import '../widgets/navBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: CustomBar(),
      body: Center(child: Text('Home Screen')),
      bottomNavigationBar: NavBar(),
    );
  }
}
