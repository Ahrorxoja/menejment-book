import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/pages/adabiyotlar.dart';
import 'package:menejment/pages/atamalar.dart';
import 'package:menejment/pages/biznes_reja/brmain.dart';
import 'package:menejment/pages/drower/malumot.dart';
import 'package:menejment/pages/drower/muallif.dart';
import 'package:menejment/pages/mavzular/mavzular_page.dart';
import 'package:menejment/pages/qonunlar/qonunlar_main.dart';
import 'package:menejment/pages/taqdimot/taqdimotmain.dart';
import 'package:menejment/pages/test.dart';
import 'package:menejment/pages/youtube.dart';

import 'amaliy/amaliy_main.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  _HomePageMainState createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                backgroundColor: kPrimaryColor,
                // title: const Text('40 Farz'),
                flexibleSpace: FlexibleSpaceBar(
                    title: Text("Dublyor tadbirkor"),
                    background: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48), // Image radius
                        child:
                            Image.asset('assets/appbar.jpg', fit: BoxFit.cover),
                      ),
                    )),
                floating: true,
                pinned: true,
                expandedHeight: 240.0,
                forceElevated: innerBoxIsScrolled,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(16))),
              ),
            ),
          ];
        },
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonLesson(
                            link: () => Get.to(MavzularPage()),
                            name: "Mavzular",
                            photo: "assets/book.json"),
                        buttonLesson(
                          link: () => Get.to(TaqdimotMain()),
                          name: "Taqdimotlar",
                          photo: "assets/taqdimot.json",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonLesson(
                          link: () => Get.to(Atamalar()),
                          name: "Atamalar",
                          photo: "assets/atamalar.json",
                        ),
                        buttonLesson(
                          link: () => Get.to(YoutubeVideo()),
                          name: "Videolar",
                          photo: "assets/video.json",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonLesson(
                          link: () => Get.to(Brmain()),
                          name: "Bines reja",
                          photo: "assets/br.json",
                        ),
                        buttonLesson(
                          link: () => Get.to(QonunlarMain()),
                          name: "Qonunlar",
                          photo: "assets/qonun.json",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonLesson(
                          link: () => Get.to(Adabiyotlar()),
                          name: "Adabiyot",
                          photo: "assets/adabiyotlar.json",
                        ),
                        buttonLesson(
                          link: () => Get.to(Test()),
                          name: "Testlar",
                          photo: "assets/testlar.json",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonLesson(
                          link: () => Get.to(AmaliyMain()),
                          name: "Amaliy",
                          photo: "assets/amaliy.json",
                        ),
                        Container(width: 140,)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: mainColor,
          child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/drawer.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Lottie.network("https://assets10.lottiefiles.com/packages/lf20_ha2hfyks.json",width: 50),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Lottie.asset("assets/yopish.json",
                          height: 75, width: 75),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            simple(
              title: "Bosh sahifa",
              icon: Lottie.asset("assets/homeicon.json", height: 75, width: 75),
            ),
            // Padding(padding: EdgeInsets.only(top: 20),),
            Divider(color: Colors.white, height: 10),
            // Divider(
            //   color: Colors.white,
            //   height: 2,
            // ),
            simpleLink(
              title: "Dastur haqida",link: () => Get.to(Malimotlar()),icon:  Lottie.asset("assets/h.json",
                height: 75, width: 75),
            ),
            simpleLink(
              title: "Muallif",link: () => Get.to(Muallif()),icon:  Lottie.asset("assets/muallif.json",
                height: 75, width: 75),
            ),
          ]),
        ),
      ),
    );
  }

  Widget simple({
    title,
    icon,

  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: ListTile(
          tileColor: Colors.white,
          title: Text(
            title,
            style: TextStyle(),
          ),
          leading: icon,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
  Widget simpleLink({
    title,
    icon,
    link,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.circular(10),
            color: kPrimaryColor),
        child: ListTile(
          tileColor: Colors.white,
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          leading: icon,
          onTap: link,
        ),
      ),
    );
  }

  Widget buttonLesson({name, photo, link}) {
    return GestureDetector(
      onTap: link,
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.30,
        width: 140,
        height: 140,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mainColor,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 20),
          ],
        ),
        // color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Lottie.asset(
                    photo,
                    height: 80,
                    width: 80,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$name",
                  style: TextStyle(
                    fontSize: 15,
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
