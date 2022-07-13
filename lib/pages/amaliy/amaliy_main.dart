import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/pages/amaliy/amaliy1.dart';
import 'package:menejment/pages/amaliy/amaliy2.dart';
import 'package:menejment/pages/amaliy/amaliy3.dart';
import 'package:menejment/pages/amaliy/amaliy4.dart';
import 'package:menejment/pages/amaliy/amaliy5.dart';
import 'package:menejment/pages/mavzular/biznes%20reja/brdars1.dart';
import 'package:menejment/pages/mavzular/biznes%20reja/brdars2.dart';
import 'package:menejment/pages/mavzular/biznes%20reja/brdars3.dart';
import 'package:menejment/pages/mavzular/biznes%20reja/brdars4.dart';
import 'package:menejment/pages/mavzular/biznes%20reja/brdars5.dart';


class AmaliyMain extends StatefulWidget {
  const AmaliyMain({Key? key}) : super(key: key);

  @override
  _AmaliyMainState createState() => _AmaliyMainState();
}

class _AmaliyMainState extends State<AmaliyMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Amaliy"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _link(
                color: mainColor,
                text: "Блиц-сўров саволлари",
                url: () => Get.to(
                  Amaliy1(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "КИЧИК ТАДБИРКОРЛИК КОРХОНАСИДА МЕҲНАТ МОТИВАЦИЯСИ ВА МЕҲНАТГА МУНОСАБАТ",
                url: () => Get.to(
                  Amaliy2(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "ИШБИЛАРМОНЛИК ЎЙИНИ.",
                url: () => Get.to(
                  Amaliy3(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "КЕЙС",
                url: () => Get.to(
                  Amaliy4(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "Машқ. Тадбиркорлик амалиёти: ўз шахсий тажрибангизда синаб кўринг",
                url: () => Get.to(
                  Amaliy5(),
                ),
              ),
              // SizedBox(height: 10,),
              // _link(
              //   color: mainColor,
              //   text: "КИЧИК БИЗНЕСНИ ЙЎЛГА ҚЎЙИШДАГИ АСОСИЙ БОСҚИЧЛАР",
              //   url: () => Get.to(
              //     MyApp2(),
              //   ),
              // ),
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
