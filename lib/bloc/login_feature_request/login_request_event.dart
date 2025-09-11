abstract class CustomerLoginEvent {}

class LoginRequestEvent extends CustomerLoginEvent {
  final String phoneNumber;
  final String password;

  LoginRequestEvent({required this.phoneNumber, required this.password});
}

class FetchCustomerInfo extends CustomerLoginEvent {
  FetchCustomerInfo();
}
