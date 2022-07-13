import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class Amaliy2 extends StatefulWidget {
  const Amaliy2({Key? key}) : super(key: key);

  @override
  State<Amaliy2> createState() => _Amaliy2State();
}

class _Amaliy2State extends State<Amaliy2> {
  String data = '';
  String data2 = '';
  fetchFileData() async {
    String responseText;
    String responseText2;
    responseText = await rootBundle.loadString('textfiles/amaliy2.txt');
    responseText2 = await rootBundle.loadString('textfiles/amaliy22.txt');
    setState(() {
      data = responseText;
      data2 = responseText2;
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
            "КИЧИК ТАДБИРКОРЛИК КОРХОНАСИДА МЕҲНАТ МОТИВАЦИЯСИ ВА МЕҲНАТГА МУНОСАБАТ"),
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
                      Text(
                        "КИЧИК ТАДБИРКОРЛИК КОРХОНАСИДА МЕҲНАТ МОТИВАЦИЯСИ ВА МЕҲНАТГА МУНОСАБАТ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "$data",
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/amaliy2.png",
                      ),
                    ],
                  ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$data2",
                    textAlign: TextAlign.justify,
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
