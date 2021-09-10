import 'package:flutter/material.dart';
import 'package:ppsi/screens/detail_barang.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //    primaryColor: Color(0x79B4B7),
      // ),
      title: "Tap Tap Material",
      debugShowCheckedModeBanner: false,
      home: Detail(),
    );
  }
}