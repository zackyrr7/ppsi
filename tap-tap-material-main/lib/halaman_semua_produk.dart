import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tap_material/detail_barang.dart';
import 'package:tap_material/halaman_utama.dart';
import 'package:sizer/sizer.dart';
import 'package:tap_material/keranjang.dart';
import 'package:tap_material/profil_user.dart';

class HalamanDelapanToko extends StatelessWidget {
  const HalamanDelapanToko({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Semua Produk",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
          ),
          body: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight),
                child: (Row(
                  children: [
                    Column(
                      children: [
                        Produk(context),
                        Produk(context),
                        Produk(context),
                        Produk(context),
                        Produk(context),
                        Produk(context),
                      ],
                    )
                  ],
                )),
              ),
            );
          }),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
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
                        return Keranjang();
                      }));
                    },
                    icon: Icon(Icons.shopping_cart_outlined)),
                label: ("Keranjang"),
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
        ));
  }

  Container Produk(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30.h,
      // color: Colors.yellow,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              // color: Colors.red,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                height: MediaQuery.of(context).size.height * 0.24,
                child: Card(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail();
                          }));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.41,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/batu.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            10,
                            30 + MediaQuery.of(context).size.height * 0.11,
                            10,
                            10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Tb. Namiroh Jaya",
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 10,
                                ),
                                Text("Jl. A. Yani",
                                    style: TextStyle(fontSize: 9.sp)),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Rp. 50.000"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.41,
                height: MediaQuery.of(context).size.height * 0.24,
                child: Card(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail();
                          }));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.41,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/batu.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            10,
                            30 + MediaQuery.of(context).size.height * 0.11,
                            10,
                            10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Tb. Namiroh Jaya",
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 10,
                                ),
                                Text("Jl. A. Yani",
                                    style: TextStyle(fontSize: 9.sp))
                              ],
                            ),
                            Row(
                              children: [
                                Text("Rp. 50.000"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
