import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class Brdars4 extends StatefulWidget {
  const Brdars4({Key? key}) : super(key: key);

  @override
  State<Brdars4> createState() => _Brdars4State();
}

class _Brdars4State extends State<Brdars4> {
  String data = '';
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('textfiles/brdars4.txt');
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
            "БИЗНEС-РEЖА ТУЗИШГА ОИД ЯКУНИЙ ТАВСИЯЛАР"),
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
                        "БИЗНEС-РEЖА ТУЗИШГА ОИД ЯКУНИЙ ТАВСИЯЛАР",
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
