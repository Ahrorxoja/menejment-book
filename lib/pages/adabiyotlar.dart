import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class Adabiyotlar extends StatefulWidget {
  const Adabiyotlar({Key? key}) : super(key: key);

  @override
  State<Adabiyotlar> createState() => _AdabiyotlarState();
}

class _AdabiyotlarState extends State<Adabiyotlar> {
  String data = '';
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('textfiles/adabiyotlar.txt');
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
            "АДАБИЁТЛАР РЎЙХАТИ"),
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
                        "АДАБИЁТЛАР РЎЙХАТИ",
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
