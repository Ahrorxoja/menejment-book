// import 'package:flutter/material.dart';
// import 'dart:io';
//
// import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
//
// class Br2 extends StatefulWidget {
//   const Br2({Key? key}) : super(key: key);
//
//   @override
//   _Br2State createState() => _Br2State();
// }
//
// class _Br2State extends State<Br2> {
//   bool _isLoading = true;
//   String pdfasset = "assets/br2.pdf";
//   late PDFDocument document;
//   loadDocument() async {
//     document = await PDFDocument.fromAsset('assets/br2.pdf');
//
//     setState(() => _isLoading = false);
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     loadDocument();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Pdf viewer"),
//       ),
//       body: Center(
//         // child: PDFViewer(document: document,),
//
//      child: _isLoading
//       ? Center(child: CircularProgressIndicator())
//         : PDFViewer(
//     document: document,)
//       ),
//     );
//   }
// }
