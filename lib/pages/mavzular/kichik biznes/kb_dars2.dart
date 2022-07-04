import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/darslar.dart';

class KBdars2 extends StatefulWidget {
  const KBdars2({Key? key}) : super(key: key);

  @override
  _KBdars2State createState() => _KBdars2State();
}

class _KBdars2State extends State<KBdars2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "ЯНГИДАН ФАОЛИЯТ БОШЛАЁТГАН ТАДБИРКОРЛАРНИНГ ОДАТИЙ ХАТОЛАРИ",
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
                    "ЯНГИДАН ФАОЛИЯТ БОШЛАЁТГАН ТАДБИРКОРЛАРНИНГ ОДАТИЙ ХАТОЛАРИ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${Darslar.kbdars2}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      height: 1.5,
                    ),
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
