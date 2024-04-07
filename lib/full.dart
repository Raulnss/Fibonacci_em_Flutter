import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomePageState();
}
class MyHomePageState extends State<MyHomePage> {
  int a = 0;
  int b = 1;
  int n1 = 0;
  String resp = "";
  List<String> nomes = [];
 void fibonatt(){
  setState(() {
    for (var i = 0; i <= 100; i++) {
      var n1 = a + b;
       a = b;
       b = n1;
       nomes.add(n1.toString());
    }
    resp = nomes.join("\n");
  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
      child:SingleChildScrollView(
       child:  Column(
        children: [
          ElevatedButton(onPressed: fibonatt,child: Text("nada")),
          Text('$resp')
         ],
        ),
       ),
      ),
    );
  }
}
