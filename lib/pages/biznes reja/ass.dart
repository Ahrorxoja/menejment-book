import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;


class Ass extends StatefulWidget {
  const Ass({Key? key}) : super(key: key);

  @override
  _AssState createState() => _AssState();
}

class _AssState extends State<Ass> {

  String data = '';

  fetchFileData() async{
    String responseText;
    responseText = await rootBundle.loadString('textfiles/ass.txt');
    setState(() {
      data = responseText;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchFileData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("salom"),
      ),
      body: Text(data),
    );
  }
}
