class PostSubscriptionsResp {
  String? id;
  String? entity;
  String? planId;
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
  int? remainingCount;

  PostSubscriptionsResp(
      {this.id,
      this.entity,
      this.planId,
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
      this.remainingCount});

  PostSubscriptionsResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    entity = json['entity'];
    planId = json['plan_id'];
    status = json['status'];
    currentStart = json['current_start'];
    currentEnd = json['current_end'];
    endedAt = json['ended_at'];
    quantity = json['quantity'];
    notes = json['notes'] != null ? Notes.fromJson(json['notes']) : null;
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
    if (this.notes != null) {
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
    if (this.remainingCount != null) {
      data['remaining_count'] = this.remainingCount;
    }
    return data;
  }
}

class Notes {
  String? notesKey1;
  String? notesKey2;

  Notes({this.notesKey1, this.notesKey2});

  Notes.fromJson(Map<String, dynamic> json) {
    notesKey1 = json['notes_key_1'];
    notesKey2 = json['notes_key_2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.notesKey1 != null) {
      data['notes_key_1'] = this.notesKey1;
    }
    if (this.notesKey2 != null) {
      data['notes_key_2'] = this.notesKey2;
    }
    return data;
  }
}
