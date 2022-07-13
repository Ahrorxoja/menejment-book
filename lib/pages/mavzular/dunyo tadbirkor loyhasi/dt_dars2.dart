import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menejment/colors/colors.dart';

class DT_dars2 extends StatefulWidget {
  const DT_dars2({Key? key}) : super(key: key);

  @override
  State<DT_dars2> createState() => _DT_dars2State();
}

class _DT_dars2State extends State<DT_dars2> {
  String data = '';
  String data2 = '';
  fetchFileData() async {
    String responseText;
    String responseText2;
    responseText = await rootBundle.loadString('textfiles/dtdars2.txt');
    responseText2 = await rootBundle.loadString('textfiles/dtdars22.txt');
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
            "“Дублёр-тaдбиркoр” лoйиҳacи acocидa тaдбиркoрлик мaлaкaлaрини ривoжлaнтириш тузилмacи компонентлари"),
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
                        "“Дублёр-тaдбиркoр” лoйиҳacи acocидa тaдбиркoрлик мaлaкaлaрини ривoжлaнтириш тузилмacи компонентлари",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "1.Тaдбиркoрлик мaлaкaлaрини ривoжлaнтириш учун кacбий фaoлият шaрoитлaрининг мoҳиятини тушуниш.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "$data",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "“Тaдбиркoр” вa “тaдбиркoрлик” тушунчaлaрининг эвoлюцияcи",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/dtdars2.png",
                        ),
                        Image.asset(
                          "assets/dtrasm2.png",
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cиздa тaдбиркoрликни бoшлaш ғoяcини шaкллaнтириши мумкин бўлгaн мaнбaни",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/dtdars23.png",
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
