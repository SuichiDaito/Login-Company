class Order {
  final int id;
  final int? parentId;
  final int userId;
  final int? deviceId;
  final int platformCd;
  final String? externalOrderId;
  final int? pieceId;
  final int adminUserId;
  final int vehiclePoolId;
  final int payCd;
  final int statusCd;
  final int pricingEngineCd;
  final String hubYn;
  final DateTime appointmentAt;
  final DateTime? visibleAt;
  final int quantity;
  final int commissionRatioDriver;
  final int commissionRatioVehicle;
  final int waypointCount;
  final String fromPlace;
  final String toPlace;
  final String? remark;
  final String? notes;
  final int? groupId;
  final String? responsePossibleWithin5Minutes;
  final DateTime? completedAt;
  final DateTime? cancelledAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int lockVersion;
  final bool commissionExemption;
  final String? externalAppId;
  final String? orderType;
  final int groupTypeCd;
  final String? w3wFromPlace;
  final String? w3wToPlace;
  final DateTime? pickedupAt;
  final int total;
  final VehiclePool vehiclePool;
  final bool hasReview;

  Order({
    required this.id,
    this.parentId,
    required this.userId,
    this.deviceId,
    required this.platformCd,
    this.externalOrderId,
    this.pieceId,
    required this.adminUserId,
    required this.vehiclePoolId,
    required this.payCd,
    required this.statusCd,
    required this.pricingEngineCd,
    required this.hubYn,
    required this.appointmentAt,
    this.visibleAt,
    required this.quantity,
    required this.commissionRatioDriver,
    required this.commissionRatioVehicle,
    required this.waypointCount,
    required this.fromPlace,
    required this.toPlace,
    this.remark,
    this.notes,
    this.groupId,
    this.responsePossibleWithin5Minutes,
    this.completedAt,
    this.cancelledAt,
    required this.createdAt,
    required this.updatedAt,
    required this.lockVersion,
    required this.commissionExemption,
    this.externalAppId,
    this.orderType,
    required this.groupTypeCd,
    this.w3wFromPlace,
    this.w3wToPlace,
    this.pickedupAt,
    required this.total,
    required this.vehiclePool,
    required this.hasReview,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      parentId: json['parent_id'],
      userId: json['user_id'],
      deviceId: json['device_id'],
      platformCd: json['platform_cd'],
      externalOrderId: json['external_order_id'],
      pieceId: json['piece_id'],
      adminUserId: json['admin_user_id'],
      vehiclePoolId: json['vehicle_pool_id'],
      payCd: json['pay_cd'],
      statusCd: json['status_cd'],
      pricingEngineCd: json['pricing_engine_cd'],
      hubYn: json['hub_yn'],
      appointmentAt: DateTime.parse(json['appointment_at']),
      visibleAt: json['visible_at'] != null
          ? DateTime.tryParse(json['visible_at'])
          : null,
      quantity: json['quantity'],
      commissionRatioDriver: json['commission_ratio_driver'],
      commissionRatioVehicle: json['commission_ratio_vehicle'],
      waypointCount: json['waypoint_count'],
      fromPlace: json['from_place'],
      toPlace: json['to_place'],
      remark: json['remark'],
      notes: json['notes'],
      groupId: json['group_id'],
      responsePossibleWithin5Minutes: json['response_possible_within5_minutes'],
      completedAt: json['completed_at'] != null
          ? DateTime.tryParse(json['completed_at'])
          : null,
      cancelledAt: json['cancelled_at'] != null
          ? DateTime.tryParse(json['cancelled_at'])
          : null,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      lockVersion: json['lock_version'],
      commissionExemption: json['commission_exemption'],
      externalAppId: json['external_app_id'],
      orderType: json['order_type'],
      groupTypeCd: json['group_type_cd'],
      w3wFromPlace: json['w3w_from_place'],
      w3wToPlace: json['w3w_to_place'],
      pickedupAt: json['pickedup_at'] != null
          ? DateTime.tryParse(json['pickedup_at'])
          : null,
      total: json['total'],
      vehiclePool: VehiclePool.fromJson(json['vehicle_pool']),
      hasReview: json['has_review'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "parent_id": parentId,
      "user_id": userId,
      "device_id": deviceId,
      "platform_cd": platformCd,
      "external_order_id": externalOrderId,
      "piece_id": pieceId,
      "admin_user_id": adminUserId,
      "vehicle_pool_id": vehiclePoolId,
      "pay_cd": payCd,
      "status_cd": statusCd,
      "pricing_engine_cd": pricingEngineCd,
      "hub_yn": hubYn,
      "appointment_at": appointmentAt.toIso8601String(),
      "visible_at": visibleAt?.toIso8601String(),
      "quantity": quantity,
      "commission_ratio_driver": commissionRatioDriver,
      "commission_ratio_vehicle": commissionRatioVehicle,
      "waypoint_count": waypointCount,
      "from_place": fromPlace,
      "to_place": toPlace,
      "remark": remark,
      "notes": notes,
      "group_id": groupId,
      "response_possible_within5_minutes": responsePossibleWithin5Minutes,
      "completed_at": completedAt?.toIso8601String(),
      "cancelled_at": cancelledAt?.toIso8601String(),
      "created_at": createdAt.toIso8601String(),
      "updated_at": updatedAt.toIso8601String(),
      "lock_version": lockVersion,
      "commission_exemption": commissionExemption,
      "external_app_id": externalAppId,
      "order_type": orderType,
      "group_type_cd": groupTypeCd,
      "w3w_from_place": w3wFromPlace,
      "w3w_to_place": w3wToPlace,
      "pickedup_at": pickedupAt?.toIso8601String(),
      "total": total,
      "vehicle_pool": vehiclePool.toJson(),
      "has_review": hasReview,
    };
  }
}

class VehiclePool {
  final int id;
  final String name;
  final String title;
  final String shortTitle;
  final int vehicleId;
  final int poolId;
  final int commissionRatio;
  final DateTime createdAt;

  VehiclePool({
    required this.id,
    required this.name,
    required this.title,
    required this.shortTitle,
    required this.vehicleId,
    required this.poolId,
    required this.commissionRatio,
    required this.createdAt,
  });

  factory VehiclePool.fromJson(Map<String, dynamic> json) {
    return VehiclePool(
      id: json['id'],
      name: json['name'],
      title: json['title'],
      shortTitle: json['short_title'],
      vehicleId: json['vehicle_id'],
      poolId: json['pool_id'],
      commissionRatio: json['commission_ratio'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "title": title,
      "short_title": shortTitle,
      "vehicle_id": vehicleId,
      "pool_id": poolId,
      "commission_ratio": commissionRatio,
      "created_at": createdAt.toIso8601String(),
    };
  }
}
