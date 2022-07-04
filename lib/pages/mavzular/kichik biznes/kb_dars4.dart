import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/darslar.dart';

class KBdars4 extends StatefulWidget {
  const KBdars4({Key? key}) : super(key: key);

  @override
  _KBdars4State createState() => _KBdars4State();
}

class _KBdars4State extends State<KBdars4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "ЎЗ БИЗНЕСИНГИЗНИ БОШЛАШГА ҚАНЧАЛИК ТАЙЁРСИЗ?",
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
                    "ЎЗ БИЗНЕСИНГИЗНИ БОШЛАШГА ҚАНЧАЛИК ТАЙЁРСИЗ?",textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${Darslar.kbdars4}",textAlign: TextAlign.justify,
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
