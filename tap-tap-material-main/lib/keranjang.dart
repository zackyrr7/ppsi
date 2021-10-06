import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tap_material/halaman_utama.dart';
import 'package:tap_material/profil_user.dart';
import 'checkout.dart';
import 'package:sizer/sizer.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({Key? key}) : super(key: key);

  @override
  _KeranjangState createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
            title: const Text(
              'KERANJANG',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            backgroundColor: Color(0xFFFFFFFF),
            elevation: 10,
            
          ),
          body: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight),
                child: Row(
                  children: [
                    Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment(0, 1),
                          children: [
                            Column(
                              children: [
                                keranjang(),
                                keranjang(),
                                keranjang(),
                                keranjang(),
                                keranjang(),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Checkout();
                                      }));
                                    },
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "CHECKOUT",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                      ),
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xff79B4B7),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
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
}

class keranjang extends StatelessWidget {
  const keranjang({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Color(0xffCAB6B6).withOpacity(0.2),
        width: MediaQuery.of(context).size.width,
        height: 20.h,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                color: Colors.white,
                height: 150,
                width: 30.w,
                child: Image(
                  image: AssetImage(
                    "assets/images/batu.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                // color: Colors.white,
                height: 150,
                width: 40.w,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Batu",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [Icon(Icons.shop), Text(" Tb. Namiroh Jaya")],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Rp.50.000"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.teal,
              height: 150,
              width: 25.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Center(
                              child: Text(
                            "+",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xff79B4B7),
                              borderRadius: BorderRadius.circular(50)),
                          height: 35,
                          width: 35,
                          // color: Color(0xff79B4B7),
                        ),
                      ),
                      Text(
                        "1",
                        style: TextStyle(fontSize: 20),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Center(
                              child: Text(
                            "-",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xff79B4B7),
                              borderRadius: BorderRadius.circular(50)),
                          height: 35,
                          width: 35,
                          // color: Color(0xff79B4B7),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
