// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Land2382_2 extends StatefulWidget {
  const Land2382_2({super.key});

  @override
  State<Land2382_2> createState() => _Land2382_2State();
}

class _Land2382_2State extends State<Land2382_2> {
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
     appBar: AppBar(
        leading: IconButton(
          color: Colors.blue,
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pushNamed("LandMaps");
          },
        ),
        title: const Text(
          'مقاطعة 2382 الاساتذة الثانية ',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset(
        'lib/assets/pdf/2381_2.pdf',
      ),
    );
  }
}