import 'dart:async';
import 'package:chopper/chopper.dart';

part 'chopper_services.chopper.dart';

@ChopperApi(baseUrl: 'http://stage-app-api.gogox.com')
abstract class CustomerChopperServices extends ChopperService {
  static CustomerChopperServices create([ChopperClient? client]) =>
      _$CustomerChopperServices(client);

  @POST(path: '/account/login')
  Future<Response<Map<String, dynamic>>> login(
    @Body() Map<String, dynamic> body,
  );

  @GET(path: '/order/history')
  Future<Response<Map<String, dynamic>>> orderList(
    @Body() Map<String, dynamic> body,
  );
}
