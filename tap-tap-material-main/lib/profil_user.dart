import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_material/authentication_service.dart';
import 'package:tap_material/halaman_utama.dart';
import 'package:provider/provider.dart';


import 'package:tap_material/list.dart';

import 'package:tap_material/main.dart';

class ProfilUser extends StatefulWidget {
  const ProfilUser({Key? key}) : super(key: key);

  @override
  _ProfilUserState createState() => _ProfilUserState();
}

class _ProfilUserState extends State<ProfilUser> {
  bool _isEditingName = false;
  bool _isEditingPhone = false;
  bool _isEditingAddress = false;
  bool _isEditingEmail = false;

  late TextEditingController _editingNameController;
  late TextEditingController _editingPhoneController;
  late TextEditingController _editingAddressController;
  late TextEditingController _editingEmailController;

  String initialNameText = "Nama";
  String initialPhoneText = "Masukkan NO HP";
  String initialAddressText = "Masukkan alamat";
  String initialEmailText = "Masukkan Email";

   createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Kamu telah keluar :(\n Datang Lagi ya"),
            actions: [
              ElevatedButton(
                child: Text("Oke"),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return MyApp();
                  }));
                },
              )
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();
    _editingNameController = TextEditingController(text: initialNameText);
    _editingPhoneController = TextEditingController(text: initialPhoneText);
    _editingAddressController = TextEditingController(text: initialAddressText);
    _editingEmailController = TextEditingController(text: initialEmailText);
  }

  @override
  void dispose() {
    _editingNameController.dispose();
    super.dispose();
  }

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
                title: Text("Nama"),
                subtitle: _editNameTextField(),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("Nomor Handphone"),
                subtitle: _editPhoneTextField(),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Alamat"),
                subtitle: _editAddressTextField(),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ),
            ),
            Container(
              child: Divider(),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("E-mail"),
                subtitle: _editEmailTextField(),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
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
            ElevatedButton(
              child: Text("Keluar"),
              onPressed: () {
                context.read<AuthenticationService>().signOut();
                createAlertDialog(context);
                
              },
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
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

  Widget _editNameTextField() {
    if (_isEditingName)
      return Center(
        child: TextField(
          onSubmitted: (newValue) {
            setState(() {
              initialNameText = newValue;
              _isEditingName = false;
            });
          },
          autofocus: true,
          controller: _editingNameController,
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          _isEditingName = true;
        });
      },
      child: Text(
        initialNameText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _editPhoneTextField() {
    if (_isEditingPhone)
      return Center(
        child: TextField(
          onSubmitted: (newValue) {
            setState(() {
              initialPhoneText = newValue;
              _isEditingPhone = false;
            });
          },
          autofocus: true,
          controller: _editingPhoneController,
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          _isEditingPhone = true;
        });
      },
      child: Text(
        initialPhoneText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _editAddressTextField() {
    if (_isEditingAddress)
      return Center(
        child: TextField(
          onSubmitted: (newValue) {
            setState(() {
              initialAddressText = newValue;
              _isEditingAddress = false;
            });
          },
          autofocus: true,
          controller: _editingAddressController,
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          _isEditingAddress = true;
        });
      },
      child: Text(
        initialAddressText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _editEmailTextField() {
    if (_isEditingEmail)
      return Center(
        child: TextField(
          onSubmitted: (newValue) {
            setState(() {
              initialEmailText = newValue;
              _isEditingEmail = false;
            });
          },
          autofocus: true,
          controller: _editingEmailController,
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          _isEditingEmail = true;
        });
      },
      child: Text(
        initialEmailText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
