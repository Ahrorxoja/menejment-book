import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class Amaliy1 extends StatefulWidget {
  const Amaliy1({Key? key}) : super(key: key);

  @override
  State<Amaliy1> createState() => _Amaliy1State();
}

class _Amaliy1State extends State<Amaliy1> {
  String data = '';
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('textfiles/amaliy1.txt');
    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchFileData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
            "Блиц-сўров саволлари"),
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // Text(
                      //   "БИЗНEС-РEЖА ИШЛАБ ЧИҚИШДАГИ АСОСИЙ ҚОИДАЛАР",
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 25,
                      //   ),
                      // ),
                      Text(
                        "$data",style: TextStyle(height: 1.2),
                        textAlign: TextAlign.justify,
                      ),
                    ],
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
