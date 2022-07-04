import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/darslar.dart';

class KBdars1 extends StatefulWidget {
  const KBdars1({Key? key}) : super(key: key);

  @override
  _KBdars1State createState() => _KBdars1State();
}

class _KBdars1State extends State<KBdars1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "БИЗНЕСНИ МУВАФФАҚИЯТЛИ ЙЎЛГА ҚЎЙИШ УЧУН ЗАРУР БЎЛГАН ШАХСИЙ СИФАТЛАР",
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
                    "БИЗНЕСНИ МУВАФФАҚИЯТЛИ ЙЎЛГА ҚЎЙИШ УЧУН ЗАРУР БЎЛГАН ШАХСИЙ СИФАТЛАР",textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${Darslar.kbdars1}",textAlign: TextAlign.justify,
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
