import 'package:flutter/material.dart' as Logger;

import '../../models/customer_info_response.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_event.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_demo/controller/call_services_api.dart';
import 'package:login_demo/services/chopper_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRequestBloc extends Bloc<LoginEvent, LoginRequestState> {
  final service = CallServicesApi.customerService;

  LoginRequestBloc() : super(LoginInitialLoad()) {
    on<LoginRequestEvent>(_onLogin);
  }

  Future<void> _onLogin(LoginRequestEvent event, Emitter emit) async {
    Logger.debugPrint("Login Bloc CREATE");
    emit(LoginLoadingInfo());

    if (event.phoneNumber.isEmpty || event.password.isEmpty) {
      emit(
        ErrorValidateLoginInfo(
          message: "Please check phoneNumber and password is not correct",
        ),
      );
      // set return in here because event send a state, notification for user error.
      // But it doesn't stop in here and cause overlapping states.
      return;
    }

    try {
      final response = await service.login({
        'phone_number': event.phoneNumber,
        'password': event.password,
      });

      if (response.isSuccessful && response.body != null) {
        final body = response.body;

        Logger.debugPrint('Status: ${response.statusCode}');
        Logger.debugPrint('response body: ${response.body}');
        Logger.debugPrint('Error: ${response.error}');

        if (body is Map<String, dynamic>) {
          if (body.containsKey('token')) {
            final token = body['token'] as String;

            final prefs = await SharedPreferences.getInstance();
            await prefs.setString('token', token);
          }

          final customerJson = response.body as Map<String, dynamic>;
          final customer = Customer.fromJson(customerJson);

          print("Customer Model: ${customer}");

          emit(LoginLoadedInfo(customer: customer));
        } else {
          emit(ErrorLoginInfoAPI(messageError: "Map Data Error"));
        }
      } else {
        emit(ErrorLoginInfoAPI(messageError: "Get Json Failure From Server"));
      }
    } catch (e) {
      emit(ErrorLoginInfoAPI(messageError: "Connect Server Error"));
    }
  }
}
