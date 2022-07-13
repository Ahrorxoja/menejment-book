import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class Amaliy5 extends StatefulWidget {
  const Amaliy5({Key? key}) : super(key: key);

  @override
  State<Amaliy5> createState() => _Amaliy5State();
}

class _Amaliy5State extends State<Amaliy5> {
  String data = '';
  String data2 = '';
  fetchFileData() async {
    String responseText;
    String responseText2;
    responseText = await rootBundle.loadString('textfiles/amaliy5.txt');
    responseText2 = await rootBundle.loadString('textfiles/amaliy55.txt');
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
            "Машқ. Тадбиркорлик амалиёти: ўз шахсий тажрибангизда синаб кўринг"),
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
                        "Машқ. Тадбиркорлик амалиёти: ўз шахсий тажрибангизда синаб кўринг",
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
                        "assets/amaliy5.png",
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
