import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/pages/mavzular/kichik%20biznes/kb_dars1.dart';
import 'package:menejment/pages/mavzular/kichik%20biznes/kb_dars2.dart';
import 'package:menejment/pages/mavzular/kichik%20biznes/kb_dars3.dart';
import 'package:menejment/pages/mavzular/kichik%20biznes/kb_dars4.dart';
import 'package:menejment/pages/mavzular/kichik%20biznes/kb_dars5.dart';
import 'package:menejment/pages/mavzular/kirish.dart';
import 'package:menejment/pages/mavzular/mundarija.dart';

class KichikBiznes extends StatefulWidget {
  const KichikBiznes({Key? key}) : super(key: key);

  @override
  _KichikBiznesState createState() => _KichikBiznesState();
}

class _KichikBiznesState extends State<KichikBiznes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("КИЧИК БИЗНЕСНИ БОШЛАШ"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _link(
                color: mainColor,
                text: "БИЗНЕСНИ МУВАФФАҚИЯТЛИ ЙЎЛГА ҚЎЙИШ УЧУН ЗАРУР БЎЛГАН ШАХСИЙ СИФАТЛАР",
                url: () => Get.to(
                  KBdars1(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "ЯНГИДАН ФАОЛИЯТ БОШЛАЁТГАН ТАДБИРКОРЛАРНИНГ ОДАТИЙ ХАТОЛАРИ",
                url: () => Get.to(
                  KBdars2(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "БЎЛАЖАК ТАДБИРКОРЛАРНИ НИМА ТАШВИШЛАНТИРАДИ?",
                url: () => Get.to(
                  KBdars3(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "ЎЗ БИЗНЕСИНГИЗНИ БОШЛАШГА ҚАНЧАЛИК ТАЙЁРСИЗ?",
                url: () => Get.to(
                  KBdars4(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "КИЧИК БИЗНЕСНИ ЙЎЛГА ҚЎЙИШДАГИ АСОСИЙ БОСҚИЧЛАР",
                url: () => Get.to(
                  KBdars5(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _link({text, color, url}) {
    return GestureDetector(
      onTap: url,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.circular(10),
            color: color),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      text,   overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
