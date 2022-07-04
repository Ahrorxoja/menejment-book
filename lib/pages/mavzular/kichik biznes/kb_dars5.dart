import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/darslar.dart';

class KBdars5 extends StatefulWidget {
  const KBdars5({Key? key}) : super(key: key);

  @override
  _KBdars5State createState() => _KBdars5State();
}

class _KBdars5State extends State<KBdars5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "КИЧИК БИЗНЕСНИ ЙЎЛГА ҚЎЙИШДАГИ АСОСИЙ БОСҚИЧЛАР",
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
                    "КИЧИК БИЗНЕСНИ ЙЎЛГА ҚЎЙИШДАГИ АСОСИЙ БОСҚИЧЛАР",textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${Darslar.kbdars5}",textAlign: TextAlign.justify,
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
