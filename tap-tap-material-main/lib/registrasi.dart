import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_material/halaman_utama.dart';
import 'package:tap_material/login.dart';

class Registrasi extends StatelessWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(30),
        child: ListView(children: [
          Center(
              child: Text(
            "Daftar",
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
          )),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              "E-mail",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                hintText: "Masukkan alamat e-mail",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                hintText: "Masukkan Password",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Nomor WhatsApp",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            child: TextField(
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                hintText: "Masukkan Nomor WhatsApp",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Alamat",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                hintText: "Masukkan Alamat",
              ),
            ),
          ),
          // Checkbox(value: , onChanged: onChanged,),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HalamanEmpat();
                  }));
                },
                child: Text(
                  "Daftar",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Sudah mempunyai akun? ",
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  child: Text(
                    "Login",
                    style:
                        TextStyle(color: Colors.lightBlueAccent, fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
