import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Land2381 extends StatefulWidget {
  const Land2381({super.key});

  @override
  State<Land2381> createState() => _Land2381State();
}

class _Land2381State extends State<Land2381> {
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
          'مقاطعة 2381',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset(
        'lib/assets/pdf/2381.pdf',
      ),
    );
  }
}