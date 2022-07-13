import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/pages/mavzular/biznes%20reja/brmain.dart';
import 'package:menejment/pages/mavzular/dunyo%20tadbirkor%20loyhasi/dt_dars1.dart';
import 'package:menejment/pages/mavzular/dunyo%20tadbirkor%20loyhasi/dtmain.dart';
import 'package:menejment/pages/mavzular/kichik%20biznes/kichin_biznes_main.dart';
import 'package:menejment/pages/mavzular/kirish.dart';
import 'package:menejment/pages/mavzular/mundarija.dart';
import 'package:menejment/pages/qonunlar/qonun1.dart';
import 'package:menejment/pages/qonunlar/qonun2.dart';
import 'package:menejment/pages/qonunlar/qonun3.dart';
import 'package:menejment/pages/qonunlar/qonun4.dart';

class QonunlarMain extends StatefulWidget {
  const QonunlarMain({Key? key}) : super(key: key);

  @override
  _QonunlarMainState createState() => _QonunlarMainState();
}

class _QonunlarMainState extends State<QonunlarMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Tadbirkorlikning qonuniy asoslari"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _link(
                color: mainColor,
                text: "Qonunlar",
                url: () => Get.to(
                Qonun1(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "Qarorlar",
                url: () => Get.to(
                  Qonun2(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "Farmonlar",
                url: () => Get.to(
                  Qonun3(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "ВАЗИРЛАР МАҲКАМАСИ ҚАРОРЛАРИ",
                url: () => Get.to(
                  Qonun4(),
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
                      text, overflow: TextOverflow.ellipsis,
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
