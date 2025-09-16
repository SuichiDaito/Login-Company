import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_event.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_state.dart';
import 'package:login_demo/constant/colors.dart';
import 'package:login_demo/views/pages/details_login_screen.dart';
import 'package:login_demo/views/sections/button_login_customer.dart';
import 'package:login_demo/views/sections/show_message_error.dart';

void showRemarkPopup(
  BuildContext context,
  TextEditingController phone,
  TextEditingController password,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        expand: false,
        builder: (_, controller) {
          return BlocListener<LoginRequestBloc, LoginRequestState>(
            listener: (context, state) {
              if (state is ErrorLoginInfoAPI) {
                Navigator.pop(context);
                SnackBarScaffold.showToast(state.messageError, false, context);
              } else if (state is ErrorValidateLoginInfo) {
                Navigator.pop(context);
                SnackBarScaffold.showToast(state.message, false, context);
              } else if (state is LoginLoadedInfo) {
                SnackBarScaffold.showToast("Login success ", true, context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsLoginScreen()),
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: controller,
                      child: Column(
                        children: [
                          TextField(
                            controller: phone,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                            ),
                          ),
                          TextField(
                            controller: password,
                            decoration: InputDecoration(labelText: 'Password'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ButtonLoginCustomer(
                      nameButton: "Login",
                      onPressed: () {
                        context.read<LoginRequestBloc>().add(
                          LoginRequestEvent(
                            phoneNumber: phone.text,
                            password: password.text,
                          ),
                        );
                      },
                      colorShape: ColorButton.primaryColor,
                      colorTextButton: ColorButton.primaryColor,
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
