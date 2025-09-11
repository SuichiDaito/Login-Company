class CustomerInfoRequest {
  final String phoneNumber;
  final String password;
  CustomerInfoRequest({required this.phoneNumber, required this.password});

  Map<String, dynamic> toJson() {
    return {'phone_number': phoneNumber, 'password': password};
  }
}
