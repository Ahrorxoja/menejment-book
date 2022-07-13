import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class Brdars3 extends StatefulWidget {
  const Brdars3({Key? key}) : super(key: key);

  @override
  State<Brdars3> createState() => _Brdars3State();
}

class _Brdars3State extends State<Brdars3> {
  String data = '';
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('textfiles/brdars3.txt');
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
            "БИЗНEС-РEЖАНИНГ ТАРКИБИЙ ТУЗИЛМАСИ."),
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
                        "БИЗНEС-РEЖАНИНГ ТАРКИБИЙ ТУЗИЛМАСИ.",
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
