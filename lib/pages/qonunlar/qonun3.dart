import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Qonun3 extends StatefulWidget {
  const Qonun3({Key? key}) : super(key: key);

  @override
  State<Qonun3> createState() => _Qonun3State();
}

class _Qonun3State extends State<Qonun3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Farmonlar"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Text("1. 2015 йил 15 майдаги Хусусий мулк, кичик бизнес ва хусусий тадбиркорликни ишончли ҳимоя қилишни таъминлаш, уларни жадал ривожлантириш йўлидаги тўсиқларни бартараф этиш чора-тадбирлари тўғрисидаги ПФ-4725-сон.",textAlign: TextAlign.justify,),
                  TextButton(
                    onPressed: () async {
                      await launch(
                          " https://uzngi.uz/upload/iblock/166/166b92604010a770c89e28dbc4c75658.pdf");
                    },
                    child: Text(" https://uzngi.uz/upload/iblock/166/166b92604010a770c89e28dbc4c75658.pdf"),
                  ),
                  Text("2. 2016 йил 5 октябрдаги Тадбиркорлик фаолиятининг жадал ривожланишини таъминлашга, хусусий мулкни ҳар томонлама ҳимоя қилишга ва ишбилармонлик муҳитини сифат жиҳатидан яхшилашга доир қўшимча чора-тадбирлар тўғрисидаги ПФ-4848-сон.",textAlign: TextAlign.justify,),
                  TextButton(
                    onPressed: () async {
                      await launch(
                          "https://uzngi.uz/upload/iblock/f5c/f5c76752a28c0098ce27bf74d918fcda.pdf ");
                    },
                    child: Text("https://uzngi.uz/upload/iblock/f5c/f5c76752a28c0098ce27bf74d918fcda.pdf"),
                  ),
                  Text("3. Тадбиркорлик ва инновациялар соҳасидаги лойиҳаларни молиялаштириш механизмларини такомиллаштириш бўйича қўшимча чора-тадбирлар тўғрисида. Ўзбекистон Республикаси Президентининг Фармони, №ПФ-5583, Қабул қилинган сана 24.11.2018. ",textAlign: TextAlign.justify,),
                  TextButton(
                    onPressed: () async {
                      await launch(
                          "http://lex.uz/docs/4076948");
                    },
                    child: Text("http://lex.uz/docs/4076948"),
                  ),
                  Text("4. Ўзбекиcтoн Реcпубликacи Президентининг 2021 йил 20 aпрелдaги “Ёшлaрнинг тaдбиркoрлик фaoлиятини қўллaб-қуввaтлaш вa бaндлигигa кўмaклaшиш, улaрни ижтимoий ҳимoя қилиш ҳaмдa бўш вaқтини мaзмунли тaшкил этишгa oид қўшимчa чoрa-тaдбирлaр тўғриcидa”ги ПФ-6208- coнли фaрмoни.",textAlign: TextAlign.justify,),
                  TextButton(
                    onPressed: () async {
                      await launch(
                          "https://lex.uz/docs/5382151");
                    },
                    child: Text("https://lex.uz/docs/5382151"),
                  ),
                  Text(
                    "5. Тадбиркорлик муҳитини яхшилаш ва хусусий секторни ривожлантириш орқали барқарор иқтисодий ўсиш учун шарт-шароитлар яратиш борасидаги навбатдаги ислоҳотлар тўғрисида.Ўзбекистон Республикаси Президентининг 2022 йил 8 апрелдаги ПФ-101-сон ",
                    textAlign: TextAlign.justify,
                  ),
                  TextButton(
                    onPressed: () async {
                      await launch("https://lex.uz/ru/docs/5947775");
                    },
                    child: Text("https://lex.uz/ru/docs/5947775"),
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
