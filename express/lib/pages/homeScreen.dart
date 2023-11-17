import 'package:flutter/material.dart';
import '../widgets/navBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     bottomNavigationBar: NavBar(),
    );
  }
}
