import 'package:login_demo/bloc/login_feature_request/login_request_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_event.dart';
import 'package:login_demo/constant/colors.dart';
import 'package:login_demo/views/pages/menu_screen.dart';
import 'package:login_demo/views/sections/button_login_customer.dart';

import '../../bloc/login_feature_request/login_request_state.dart';
import '../sections/show_message_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsLoginScreen extends StatefulWidget {
  DetailsLoginScreen({super.key});
  State<DetailsLoginScreen> createState() => DetailScreen();
}

class DetailScreen extends State<DetailsLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Order Detail")),
      body: BlocBuilder<LoginRequestBloc, LoginRequestState>(
        builder: (context, state) {
          if (state is LoginLoadingInfo) {
            return Center(
              child: CircularProgressIndicator(color: Colors.blueAccent),
            );
          } else if (state is LoginLoadedInfo) {
            final customer = state.customer;

            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email: ${customer.email}"),
                Text("Name: ${customer.name}"),
                Text("PhoneNumber: ${customer.phoneNumber}"),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40.0,
                    horizontal: 8.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ButtonLoginCustomer(
                      nameButton: "Setting Screen",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuScreen()),
                        );
                      },
                      colorShape: ColorButton.primaryColor,
                      colorTextButton: ColorButton.primaryColor,
                    ),
                  ),
                ),
              ],
            );
          }
          return Center(child: Text("NOT FOUND DATA | 404"));
        },
      ),
    );
  }
}
