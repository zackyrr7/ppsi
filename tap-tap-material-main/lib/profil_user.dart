import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:tap_material/halaman_utama.dart';

import 'package:tap_material/list.dart';

class ProfilUser extends StatefulWidget {
  const ProfilUser({Key? key}) : super(key: key);

  @override
  _ProfilUserState createState() => _ProfilUserState();
}

class _ProfilUserState extends State<ProfilUser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
          title: Text(
            "PROFIL",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
         
          
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 115,
                    height: 115,
                    decoration: ShapeDecoration(
                        color: Colors.grey, shape: CircleBorder()),
                    child: Icon(
                      Icons.person,
                      size: 100,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text("Hallo !", style: TextStyle(fontSize: 25)),
                        Text(
                          "Tap-Tap Material",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("taptapmaterial@gmail.com",
                            style: TextStyle(fontSize: 10)),
                        Text("Jl. Padat Karya", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(13),
              child: Text(
                "Pengaturan Dasar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.lock),
                title: Text("Password"),
                subtitle: Text("****************"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit_off)),
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("Nomor Handphone"),
                subtitle: Text("0895********"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit_off)),
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Alamat"),
                subtitle: Text("Jl. Padat Karya"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit_off)),
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("E-mail"),
                subtitle: Text("taptapmaterial@gmail.com"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit_off)),
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              margin: EdgeInsets.all(13),
              child: Text(
                "Tentang Aplikasi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                tileColor: Color(0xff79B4B7),
                leading: Icon(
                  Icons.policy,
                  size: 30,
                ),
                title: Text("Kebijakan dan Privasi"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chevron_right, size: 30),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                tileColor: Color(0xff79B4B7),
                leading: Icon(
                  Icons.security,
                  size: 30,
                ),
                title: Text("Keamanan"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chevron_right, size: 30),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff79B4B7),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HalamanEmpat();
                  }));
                },
                icon: Icon(Icons.home),
              ),
              label: ("Beranda"),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return listitem();
                    }));
                  },
                  icon: Icon(Icons.shopping_cart_outlined)),
              label: ("Memesan"),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfilUser();
                    }));
                  },
                  icon: Icon(Icons.person)),
              label: ("Akun"),
            ),
          ],
        ),
      ),
    );
  }
}
