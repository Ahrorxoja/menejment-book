import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class Amaliy3 extends StatefulWidget {
  const Amaliy3({Key? key}) : super(key: key);

  @override
  State<Amaliy3> createState() => _Amaliy3State();
}

class _Amaliy3State extends State<Amaliy3> {
  String data = '';
  String data2 = '';
  fetchFileData() async {
    String responseText;
    String responseText2;
    responseText = await rootBundle.loadString('textfiles/amaliy3.txt');
    responseText2 = await rootBundle.loadString('textfiles/amaliy33.txt');
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
            "ИШБИЛАРМОНЛИК ЎЙИНИ."),
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
                        "ИШБИЛАРМОНЛИК ЎЙИНИ.",
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
                        "assets/amaliy3.png",
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
