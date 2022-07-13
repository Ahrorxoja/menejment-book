import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';

class Muallif extends StatefulWidget {
  const Muallif({Key? key}) : super(key: key);

  @override
  State<Muallif> createState() => _MuallifState();
}

class _MuallifState extends State<Muallif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Muallif"),
      ),
      body: Container(
        child: Column(
          children: [ClipRRect(
            // borderRadius: BorderRadius.circular(8.0),
            child: Center(
              child: Image.asset(
               "assets/muallif.png",
                height: MediaQuery.of(context).size.width * 0.65,
                width: MediaQuery.of(context).size.width * 0.65,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Муаллиф",style: TextStyle(fontWeight: FontWeight.bold),),Text(": Эргашева Фотимахон Ибрагимовна"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Тел:",style: TextStyle(fontWeight: FontWeight.bold),),Text("(97)-230-27-72"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("E-mail:",style: TextStyle(fontWeight: FontWeight.bold),),Text("ergasevafotima77@gmail.com"),
                  ],
                ),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
