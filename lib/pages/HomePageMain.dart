import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/pages/mavzular/mavzular_page.dart';

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
                    title: Text("Menejment"),
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
                          link: () => Get.to(MavzularPage()),
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
                          link: () => Get.to(MavzularPage()),
                          name: "Atamalar",
                          photo: "assets/atamalar.json",
                        ),
                        buttonLesson(
                          link: () => Get.to(MavzularPage()),
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
                          link: () => Get.to(MavzularPage()),
                          name: "Amaliy",
                          photo: "assets/amaliy.json",
                        ),
                        buttonLesson(
                          link: () => Get.to(MavzularPage()),
                          name: "Labaratoriya",
                          photo: "assets/labaratoriya.json",
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
                          link: () => Get.to(MavzularPage()),
                          name: "Adabiyot",
                          photo: "assets/adabiyotlar.json",
                        ),
                        buttonLesson(
                          link: () => Get.to(MavzularPage()),
                          name: "Testlar",
                          photo: "assets/testlar.json",
                        ),
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
          color: kPrimaryColor,
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
              title: "Uy",
              icon: Lottie.asset("assets/homeicon.json", height: 75, width: 75),
            ),
            // Padding(padding: EdgeInsets.only(top: 20),),
            Divider(color: Colors.white, height: 2),
            Divider(
              color: Colors.white,
              height: 2,
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
