import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageLoginBearEmpty extends StatelessWidget {
  const ImageLoginBearEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 116),
        Image.asset('assets/images/bear_empty.png', width: 200, height: 200),
        Text(
          "Hi",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
        ),
        Text(
          "What would you like to send today?",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}
