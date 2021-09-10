import 'package:flutter/material.dart';


class _MyNavigasi extends StatefulWidget {
  const _MyNavigasi({ Key? key }) : super(key: key);

  @override
  __MyNavigasiState createState() => __MyNavigasiState();
}

class __MyNavigasiState extends State<_MyNavigasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
        BottomNavigationBarItem(icon: Icon(Icons.person))

      ],),
    );
  }
}