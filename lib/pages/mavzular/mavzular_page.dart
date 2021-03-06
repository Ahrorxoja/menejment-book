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

class MavzularPage extends StatefulWidget {
  const MavzularPage({Key? key}) : super(key: key);

  @override
  _MavzularPageState createState() => _MavzularPageState();
}

class _MavzularPageState extends State<MavzularPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Mavzular"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _link(
                color: mainColor,
                text: "КИРИШ",
                url: () => Get.to(
                  KirishPage(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "МУНДАРИЖА",
                url: () => Get.to(
                  Mundarija(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "КИЧИК БИЗНЕСНИ БОШЛАШ",
                url: () => Get.to(
                  KichikBiznes(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: kPrimaryColor,
                text: "“Дублёр-тадбиркор” лойиҳаси асосида тадбиркорлик малакаларини ривожлантириш тузилмаси",
                url: () => Get.to(
                  DTmain(),
                ),
              ),
              SizedBox(height: 10,),
              _link(
                color: mainColor,
                text: "БИЗНЕС-РЕЖА ИШЛАБ ЧИҚИШ",
                url: () => Get.to(
                  BRmain(),
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
