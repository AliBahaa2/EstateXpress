// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Landelec_2_1 extends StatefulWidget {
  const Landelec_2_1({super.key});

  @override
  State<Landelec_2_1> createState() => _Landelec_2_1State();
}

class _Landelec_2_1State extends State<Landelec_2_1> {
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
          'افرازات الكهرباء الاولى والثانية',
          style: TextStyle(fontFamily: 'Tajawal', color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SfPdfViewer.asset(
        'lib/assets/pdf/elec_2_1.pdf',
      ),
    );
  }
}