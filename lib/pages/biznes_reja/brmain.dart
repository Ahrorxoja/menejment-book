import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/pages/biznes_reja/br2.dart';
import 'package:menejment/pages/biznes_reja/br3.dart';
import 'package:menejment/pages/biznes_reja/br4.dart';
import 'package:menejment/pages/biznes_reja/br5.dart';
import 'package:menejment/pages/biznes_reja/br6.dart';
import 'package:menejment/pages/biznes_reja/br7.dart';
import 'package:menejment/pages/biznes_reja/brdars1.dart';
import 'package:menejment/pages/mavzular/biznes%20reja/brmain.dart';
import 'package:menejment/pages/mavzular/dunyo%20tadbirkor%20loyhasi/dt_dars1.dart';
import 'package:menejment/pages/mavzular/dunyo%20tadbirkor%20loyhasi/dtmain.dart';
import 'package:menejment/pages/mavzular/kichik%20biznes/kichin_biznes_main.dart';
import 'package:menejment/pages/mavzular/kirish.dart';
import 'package:menejment/pages/mavzular/mundarija.dart';

import '../mavzular/biznes reja/brdars1.dart';

class Brmain extends StatefulWidget {
  const Brmain({Key? key}) : super(key: key);

  @override
  _BrmainState createState() => _BrmainState();
}

class _BrmainState extends State<Brmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Biznes reja namunalari"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _link(
                color: mainColor,
                text: "Tikuvchilik",
                url: () => Get.to(
                  Br1(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "Quyonchilik",
                url: () => Get.to(
                  Br2(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "Parandachilik",
                url: () => Get.to(
                  Br3(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "Baliqchilik",
                url: () => Get.to(
                  Br4(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "Chorvachilik",
                url: () => Get.to(
                  Br5(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "Semichka qadoqlash",
                url: () => Get.to(
                  Br6(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "Tuyaqush boqish",
                url: () => Get.to(
                  Br7(),
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
