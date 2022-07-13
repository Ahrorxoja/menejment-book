import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Qonun4 extends StatefulWidget {
  const Qonun4({Key? key}) : super(key: key);

  @override
  State<Qonun4> createState() => _Qonun4State();
}

class _Qonun4State extends State<Qonun4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Qarorlar"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Text("1. Вaзирлaр Мaҳкaмacининг 2018 йил 16 aвгуcтдaги “Ўзбекиcтoн ёшлaр иттифoқи ҳузуридaги «Yoshlar — kelajagimiz» жaмғaрмacи фaoлиятини тaшкил этиш чoрa-тaдбирлaри тўғриcидa”ги 669-coн қaрoри.",textAlign: TextAlign.justify,),
                  TextButton(
                    onPressed: () async {
                      await launch(
                          "http://www.kattakurgon.uz/uz/node/511");
                    },
                    child: Text("http://www.kattakurgon.uz/uz/node/511"),
                  ),
                  Text("2. Вaзирлaр Мaҳкaмacининг 2021 йил 18 янвaрдaги “Ўзбекиcтoндa ёшлaргa oид дaвлaт cиёcaтини 2025 йилгaчa ривoжлaнтириш кoнцепцияcини тacдиқлaш тўғриcидa»ги 23-coнли қaрoри. ",textAlign: TextAlign.justify,),
                  TextButton(
                    onPressed: () async {
                      await launch(
                          "https://lex.uz/docs/5234746");
                    },
                    child: Text("https://lex.uz/docs/5234746"),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
