import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Customer {
  final int? id;
  final int? userCode;
  final int? typeCd;
  final String? email;
  final String? name;
  final String? phoneNumber;
  final int? organizationId;
  final int? branchId;
  final int? statusCd;
  final String? notes;
  final int? signInCount;
  final String? referralCode;
  final String? lastSignIn;
  final String? withdrawalReason;
  final String? withdrawalCustomReason;
  final String? editStatus;
  final int? invalidLoginCount;
  final String? lockUserAt;
  final String? customerKey;
  final String? lastAccessedAt;
  final String? token;
  final bool? newAbUser;

  Customer({
    this.id,
    this.userCode,
    this.typeCd,
    this.email,
    this.name,
    this.phoneNumber,
    this.organizationId,
    this.branchId,
    this.statusCd,
    this.notes,
    this.signInCount,
    this.referralCode,
    this.lastSignIn,
    this.withdrawalReason,
    this.withdrawalCustomReason,
    this.editStatus,
    this.invalidLoginCount,
    this.lockUserAt,
    this.customerKey,
    this.lastAccessedAt,
    this.token,
    this.newAbUser,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'] as int?,
      userCode: json['user_code'] as int?,
      typeCd: json['type_cd'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      organizationId: json['organization_id'] as int?,
      branchId: json['branch_id'] as int?,
      statusCd: json['status_cd'] as int?,
      notes: json['notes'] as String?,
      signInCount: json['sign_in_count'] as int?,
      referralCode: json['referral_code'] as String?,
      lastSignIn: json['last_sign_in'] as String?,
      withdrawalReason: json['withdrawal_reason'] as String?,
      withdrawalCustomReason: json['withdrawal_custom_reason'] as String?,
      editStatus: json['edit_status'] as String?,
      invalidLoginCount: json['invalid_login_count'] as int?,
      lockUserAt: json['lock_user_at'] as String?,
      customerKey: json['customer_key'] as String?,
      lastAccessedAt: json['last_accessed_at'] as String?,
      token: json['token'] as String?,
      newAbUser: json['new_ab_user'] as bool?,
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'user_code': userCode,
  //     'type_cd': typeCd,
  //     'email': email,
  //     'name': name,
  //     'phone_number': phoneNumber,
  //     'organization_id': organizationId,
  //     'branch_id': branchId,
  //     'status_cd': statusCd,
  //     'notes': notes,
  //     'sign_in_count': signInCount,
  //     'referral_code': referralCode,
  //     'last_sign_in': lastSignIn,
  //     'withdrawal_reason': withdrawalReason,
  //     'withdrawal_custom_reason': withdrawalCustomReason,
  //     'edit_status': editStatus,
  //     'invalid_login_count': invalidLoginCount,
  //     'lock_user_at': lockUserAt,
  //     'customer_key': customerKey,
  //     'last_accessed_at': lastAccessedAt,
  //     'token': token,
  //     'new_ab_user': newAbUser,
  //   };
  // }
}
