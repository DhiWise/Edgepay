import '../payments/get_payments_resp.dart';

class GetSubscriptionsResp {
  String? entity;
  int? count;
  List<Items>? items;

  GetSubscriptionsResp({this.entity, this.count, this.items});

  GetSubscriptionsResp.fromJson(Map<String, dynamic> json) {
    entity = json['entity'];
    count = json['count'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.entity != null) {
      data['entity'] = this.entity;
    }
    if (this.count != null) {
      data['count'] = this.count;
    }
    if (this.items != null) {
      data['items'] = this.items?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? id;
  String? entity;
  String? planId;
  Null? customerId;
  String? status;
  Null? currentStart;
  Null? currentEnd;
  Null? endedAt;
  int? quantity;
  Notes? notes;
  int? chargeAt;
  int? startAt;
  int? endAt;
  int? authAttempts;
  int? totalCount;
  int? paidCount;
  bool? customerNotify;
  int? createdAt;
  int? expireBy;
  String? shortUrl;
  bool? hasScheduledChanges;
  Null? changeScheduledAt;
  String? source;
  Null? paymentMethod;
  Null? offerId;
  int? remainingCount;

  Items(
      {this.id,
      this.entity,
      this.planId,
      this.customerId,
      this.status,
      this.currentStart,
      this.currentEnd,
      this.endedAt,
      this.quantity,
      this.notes,
      this.chargeAt,
      this.startAt,
      this.endAt,
      this.authAttempts,
      this.totalCount,
      this.paidCount,
      this.customerNotify,
      this.createdAt,
      this.expireBy,
      this.shortUrl,
      this.hasScheduledChanges,
      this.changeScheduledAt,
      this.source,
      this.paymentMethod,
      this.offerId,
      this.remainingCount});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    entity = json['entity'];
    planId = json['plan_id'];
    customerId = json['customer_id'];
    status = json['status'];
    currentStart = json['current_start'];
    currentEnd = json['current_end'];
    endedAt = json['ended_at'];
    quantity = json['quantity'];
    if(json['notes'] != null && json['notes'] is Map<String, dynamic>) {
      notes = json['notes'] != null ? Notes.fromJson(json['notes']) : null;
    }
    chargeAt = json['charge_at'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    authAttempts = json['auth_attempts'];
    totalCount = json['total_count'];
    paidCount = json['paid_count'];
    customerNotify = json['customer_notify'];
    createdAt = json['created_at'];
    expireBy = json['expire_by'];
    shortUrl = json['short_url'];
    hasScheduledChanges = json['has_scheduled_changes'];
    changeScheduledAt = json['change_scheduled_at'];
    source = json['source'];
    paymentMethod = json['payment_method'];
    offerId = json['offer_id'];
    remainingCount = json['remaining_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.entity != null) {
      data['entity'] = this.entity;
    }
    if (this.planId != null) {
      data['plan_id'] = this.planId;
    }
    if (this.customerId != null) {
      data['customer_id'] = this.customerId;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.currentStart != null) {
      data['current_start'] = this.currentStart;
    }
    if (this.currentEnd != null) {
      data['current_end'] = this.currentEnd;
    }
    if (this.endedAt != null) {
      data['ended_at'] = this.endedAt;
    }
    if (this.quantity != null) {
      data['quantity'] = this.quantity;
    }
    if (this.notes != null && this.notes is Map<String,dynamic>) {
      data['notes'] = this.notes?.toJson();
    }
    if (this.chargeAt != null) {
      data['charge_at'] = this.chargeAt;
    }
    if (this.startAt != null) {
      data['start_at'] = this.startAt;
    }
    if (this.endAt != null) {
      data['end_at'] = this.endAt;
    }
    if (this.authAttempts != null) {
      data['auth_attempts'] = this.authAttempts;
    }
    if (this.totalCount != null) {
      data['total_count'] = this.totalCount;
    }
    if (this.paidCount != null) {
      data['paid_count'] = this.paidCount;
    }
    if (this.customerNotify != null) {
      data['customer_notify'] = this.customerNotify;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.expireBy != null) {
      data['expire_by'] = this.expireBy;
    }
    if (this.shortUrl != null) {
      data['short_url'] = this.shortUrl;
    }
    if (this.hasScheduledChanges != null) {
      data['has_scheduled_changes'] = this.hasScheduledChanges;
    }
    if (this.changeScheduledAt != null) {
      data['change_scheduled_at'] = this.changeScheduledAt;
    }
    if (this.source != null) {
      data['source'] = this.source;
    }
    if (this.paymentMethod != null) {
      data['payment_method'] = this.paymentMethod;
    }
    if (this.offerId != null) {
      data['offer_id'] = this.offerId;
    }
    if (this.remainingCount != null) {
      data['remaining_count'] = this.remainingCount;
    }
    return data;
  }
}
