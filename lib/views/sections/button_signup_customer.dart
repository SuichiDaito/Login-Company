import 'package:google_fonts/google_fonts.dart';
import 'package:login_demo/constant/colors.dart';

import '../../bloc/login_feature_request/login_request_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_event.dart';

class ButtonSignupCustomer extends StatelessWidget {
  final String nameButton;
  final VoidCallback onPressed;
  final Color backgroundColor;

  ButtonSignupCustomer({
    super.key,
    required this.nameButton,
    required this.onPressed,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.2,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(40)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          nameButton,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
