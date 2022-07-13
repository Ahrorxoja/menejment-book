// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
//
//
// class Br22 extends StatefulWidget {
//   const Br22({Key? key}) : super(key: key);
//
//   @override
//   _Br22State createState() => _Br22State();
// }
//
// class _Br22State extends State<Br22> {
//
//
//
//
//   String pathPDF = "";
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     fromAsset('assets/demo-link.pdf', 'demo.pdf').then((f) {
//       setState(() {
//         pathPDF = f.path;
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("pdf file open"),
//       ),
//     );
//   }
// }
