import 'package:flutter/material.dart';

class ButtonLoginCustomer extends StatefulWidget {
  final String nameButton;
  VoidCallback onPressed;
  ButtonLoginCustomer({
    super.key,
    required this.nameButton,
    required this.onPressed,
  });
  @override
  State<ButtonLoginCustomer> createState() => ButtonLogin();
}

class ButtonLogin extends State<ButtonLoginCustomer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.5,
          backgroundColor: Colors.green,
          foregroundColor: Colors.blueGrey,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.nameButton,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
