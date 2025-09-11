import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:login_demo/constant/string.dart';
import 'package:login_demo/services/chopper_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CallServicesApi {
  static final ChopperClient _chopperClient = ChopperClient(
    baseUrl: Uri.parse(AppUrl.url),
    converter: JsonConverter(),
    interceptors: [HttpLoggingInterceptor(), AuthHeaderInterceptor()],
    services: [],
  );

  static final CustomerChopperServices customerService =
      CustomerChopperServices.create(_chopperClient);
}

class AuthHeaderInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
    Chain<BodyType> chain,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';

    final updatedRequest = chain.request.copyWith(
      headers: {
        ...chain.request.headers,
        'app-version': '99.99.99',
        'Authorization': '$token',
        'X-Platform': 'iOS',
      },
    );
    return chain.proceed(updatedRequest);
  }
}
