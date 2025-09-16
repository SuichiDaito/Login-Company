import 'package:go_router/go_router.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_event.dart';
import 'package:login_demo/constant/colors.dart';
import 'package:login_demo/views/pages/login_screen_customer.dart';
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
  int _selectedIndex = 0;

  final listScreen = ["/home", "/order_details", "/menu"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Order Detail"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios), // icon tuỳ chỉnh
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: ColorButton.primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
            context.go(listScreen[value]);
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.outbox_rounded),
            label: "Order",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),
    );
  }
}
