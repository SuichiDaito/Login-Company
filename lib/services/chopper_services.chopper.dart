// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CustomerChopperServices extends CustomerChopperServices {
  _$CustomerChopperServices([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CustomerChopperServices;

  @override
  Future<Response<Map<String, dynamic>>> login(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('http://stage-app-api.gogox.com/account/login');
    final $body = body;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
