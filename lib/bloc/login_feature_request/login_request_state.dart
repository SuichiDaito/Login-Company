import '../../models/customer_info_response.dart';

abstract class LoginRequestState {}

class LoginInitialLoad extends LoginRequestState {}

class LoginLoadingInfo extends LoginRequestState {}

class LoginLoadedInfo extends LoginRequestState {
  final Customer customer;

  LoginLoadedInfo({required this.customer});
}

class ErrorLoginInfo extends LoginRequestState {
  final String messageError;

  ErrorLoginInfo({required this.messageError});
}
