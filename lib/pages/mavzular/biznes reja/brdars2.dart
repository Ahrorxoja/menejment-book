import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class Brdars2 extends StatefulWidget {
  const Brdars2({Key? key}) : super(key: key);

  @override
  State<Brdars2> createState() => _Brdars2State();
}

class _Brdars2State extends State<Brdars2> {
  String data = '';
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('textfiles/brdars2.txt');
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
            "БИЗНEС-РEЖА ИШЛАБ ЧИҚИШДАГИ АСОСИЙ ҚОИДАЛАР"),
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
                        "БИЗНEС-РEЖА ИШЛАБ ЧИҚИШДАГИ АСОСИЙ ҚОИДАЛАР",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
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
