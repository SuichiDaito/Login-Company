import '../../models/customer_info_response.dart';

abstract class LoginRequestState {}

class LoginInitialLoad extends LoginRequestState {}

class LoginLoadingInfo extends LoginRequestState {}

class LoginLoadedInfo extends LoginRequestState {
  final Customer customer;

  LoginLoadedInfo({required this.customer});
}

class ErrorLoginInfoAPI extends LoginRequestState {
  final String messageError;

  ErrorLoginInfoAPI({required this.messageError});
}

class ErrorValidateLoginInfo extends LoginRequestState {
  final String message;

  ErrorValidateLoginInfo({required this.message});
}
