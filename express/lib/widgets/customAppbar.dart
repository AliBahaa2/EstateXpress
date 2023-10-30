import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
    );
  }
}
