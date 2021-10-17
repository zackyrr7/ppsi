import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_material/authentication_service.dart';
import 'package:tap_material/halaman_utama.dart';
import 'package:tap_material/login.dart';
import 'package:provider/provider.dart';
import 'package:tap_material/main.dart';

class Registrasi extends StatefulWidget {
  Registrasi({Key? key}) : super(key: key);

  @override
  _RegistrasiState createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Kamu Sudah berhasil Mendaftar"),
            actions: [
              ElevatedButton(
                child: Text("Masuk"),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                },
              )
            ],
          );
        });
  }

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
              controller: emailController,
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
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                hintText: "Masukkan Password",
              ),
            ),
          ),

          // Checkbox(value: , onChanged: onChanged,),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationService>().signUp(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim());
                  createAlertDialog(context);
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
