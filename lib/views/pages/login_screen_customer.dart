import 'package:login_demo/views/pages/details_login_screen.dart';
import 'package:login_demo/views/sections/button_signup_customer.dart';
import 'package:login_demo/views/sections/image_login_bear_empty.dart';
import 'package:login_demo/views/sections/popup_login_sections.dart';

import '../../bloc/login_feature_request/login_request_state.dart';
import '../../constant/colors.dart';
import '../sections/show_message_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_event.dart';
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
  void dispose() {
    super.dispose();
    phoneNumber.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginRequestBloc, LoginRequestState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ImageLoginBearEmpty(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(63, 32, 63, 0),
                    child: ButtonLoginCustomer(
                      nameButton: "Login",
                      colorShape: ColorButton.primaryColor,
                      colorTextButton: ColorButton.primaryColor,
                      onPressed: () {
                        showRemarkPopup(context, phoneNumber, password);
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 63),
                    child: ButtonSignupCustomer(
                      nameButton: "Signup",
                      backgroundColor: ColorButton.primaryColor,
                      onPressed: () {
                        context.read<LoginRequestBloc>().add(
                          LoginRequestEvent(
                            phoneNumber: phoneNumber.text,
                            password: password.text,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 63),
                    child: ButtonSignupCustomer(
                      nameButton: "Business",
                      backgroundColor: ColorButton.neutral1,
                      onPressed: () {
                        context.read<LoginRequestBloc>().add(
                          LoginRequestEvent(
                            phoneNumber: phoneNumber.text,
                            password: password.text,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {
         
        },
      ),
    );
  }
}
