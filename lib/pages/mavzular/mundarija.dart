import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:menejment/darslar.dart';

class Mundarija extends StatefulWidget {
  const Mundarija({Key? key}) : super(key: key);

  @override
  _MundarijaState createState() => _MundarijaState();
}

class _MundarijaState extends State<Mundarija> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "МУНДАРИЖА",
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "МУНДАРИЖА",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${Darslar.mundarija}",textAlign: TextAlign.justify,
                    style: TextStyle(height: 1.5,),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
