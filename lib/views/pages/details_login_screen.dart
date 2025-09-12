import 'package:login_demo/bloc/login_feature_request/login_request_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_event.dart';

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
      appBar: AppBar(title: Text("Setting Screen")),
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
              ],
            );
          }
          return Center(child: Text("NOT FOUND DATA | 404"));
        },
      ),
    );
  }
}
