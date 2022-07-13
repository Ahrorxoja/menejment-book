import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/darslar.dart';

class DTdars1 extends StatefulWidget {
  const DTdars1({Key? key}) : super(key: key);

  @override
  _DTdars1State createState() => _DTdars1State();
}

class _DTdars1State extends State<DTdars1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "“Дублёр-тадбиркор” лойиҳаси асосида тадбиркорлик малакаларини ривожлантириш тузилмаси",
        ),
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
                        "“Дублёр-тадбиркор” лойиҳаси асосида тадбиркорлик малакаларини ривожлантириш тузилмаси",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                  Text(
                    "Дублёр-тaдбиркoр лoйиҳaсининг acocий мaқcaд ўз муcтaқил тaдбиркoрлик фaoлиятини тaшкил этишни режaлaштиргaн тaлaбaлaрдa тaдбиркoрлик мaлaкaлaрини дублёрлик қилиш oрқaли ривoжлaнтиришдир.",textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/dtrasm1.png")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
