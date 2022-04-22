import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String valu ="Nothing";
 void onPressed() => setState(() => valu = DateTime.now().toString(),
   
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title:    Text("Create Tooltips",),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(valu),
              IconButton (icon : Icon (Icons.timer),onPressed:onPressed,
              tooltip: "Click Me",)
              
            ]),
        ),
      ),
    );
  }
}