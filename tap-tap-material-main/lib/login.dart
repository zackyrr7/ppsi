import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_material/halaman_utama.dart';
import 'package:tap_material/registrasi.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 200, 30, 30),
        child: ListView(children: [
          Center(
              child: Text(
            "Halaman Login",
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
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HalamanEmpat();
                  }));
                },
                child: Text(
                  "Masuk",
                  style: TextStyle(fontSize: 20),
                ),
              )),
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Belum mempunyai akun? ",
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                    child: Text(
                  "Daftar",
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),
                ),onTap: () {
                  Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Registrasi();
                        }));
                },)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
