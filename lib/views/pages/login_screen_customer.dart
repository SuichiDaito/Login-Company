import 'package:flutter/material.dart';
import 'package:login_demo/views/sections/button_login_customer.dart';

class LoginScreenCustomer extends StatefulWidget {
  LoginScreenCustomer({super.key});
  @override
  State<LoginScreenCustomer> createState() => LoginScreen();
}

class LoginScreen extends State<LoginScreenCustomer> {
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Feature",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: phoneNumber, autofocus: true),
              TextField(controller: password),
              const SizedBox(height: 30),
              ButtonLoginCustomer(nameButton: "Login", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
