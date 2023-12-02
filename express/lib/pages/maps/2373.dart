import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Land2373 extends StatefulWidget {
  const Land2373({super.key});

  @override
  State<Land2373> createState() => _Land2373State();
}

class _Land2373State extends State<Land2373> {
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
          'مقاطعة 2373 البلدية ',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset(
        'lib/assets/pdf/2373.pdf',
      ),
    );
  }
}