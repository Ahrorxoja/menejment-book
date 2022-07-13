import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';
class Qonun1 extends StatefulWidget {
  const Qonun1({Key? key}) : super(key: key);

  @override
  State<Qonun1> createState() => _Qonun1State();
}

class _Qonun1State extends State<Qonun1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Qonunlar"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: TextButton(
                onPressed: () async {
                  await launch(
                      "https://uzngi.uz/upload/iblock/ca0/ca0de1eb5c64a7b193d0d63f49a44e85.pdf");
                },
                child: Text("328-сон Қонуни. "),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () async {
                  await launch(
                      "https://uzngi.uz/upload/iblock/e18/e18beaf5aeb6d46bc22fb4a11436d5e2.pdf");
                },
                child: Text("ЎРҚ-391-сон."),
              ),
            )
          ],
        ),
      ),
    );
  }
}
