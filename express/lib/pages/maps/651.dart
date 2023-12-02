import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Land651 extends StatefulWidget {
  const Land651({super.key});

  @override
  State<Land651> createState() => _Land651State();
}

class _Land651State extends State<Land651> {
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
          'مقاطعة 651 الأسمدة',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset(
        'lib/assets/pdf/651.pdf',
      ),
    );
  }
}