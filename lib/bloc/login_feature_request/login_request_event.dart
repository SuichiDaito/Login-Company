abstract class LoginEvent {}

class LoginRequestEvent extends LoginEvent {
  final String phoneNumber;
  final String password;

  LoginRequestEvent({required this.phoneNumber, required this.password});
}

class FetchCustomerInfo extends LoginEvent {
  FetchCustomerInfo();
}
