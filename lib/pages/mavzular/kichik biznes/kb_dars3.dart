import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/darslar.dart';

class KBdars3 extends StatefulWidget {
  const KBdars3({Key? key}) : super(key: key);

  @override
  _KBdars3State createState() => _KBdars3State();
}

class _KBdars3State extends State<KBdars3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "БЎЛАЖАК ТАДБИРКОРЛАРНИ НИМА ТАШВИШЛАНТИРАДИ?",
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "БЎЛАЖАК ТАДБИРКОРЛАРНИ НИМА ТАШВИШЛАНТИРАДИ?",textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${Darslar.kbdars3}",textAlign: TextAlign.justify,
                    style: TextStyle(height: 1.5,),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
