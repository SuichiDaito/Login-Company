import 'package:chopper/chopper.dart';

abstract class OrderState {}

class LoadingState extends OrderState {}

class ErrorState extends OrderState {
  final String message;
  ErrorState(this.message);
}

class LoadedStateCompany extends OrderState {
  final Response info;
  LoadedStateCompany(this.info);
}
