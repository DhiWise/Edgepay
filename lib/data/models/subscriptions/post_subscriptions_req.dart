class PostSubscriptionsReq {
  String? planId;
  int? totalCount;
  int? quantity;
  int? startAt;
  int? expireBy;
  int? customerNotify;
  Notes1? notes;
  NotifyInfo? notifyInfo;


  PostSubscriptionsReq(
      {this.planId,
        this.totalCount,
        this.quantity,
        this.startAt,
        this.expireBy,
        this.customerNotify,
        this.notes,
        this.notifyInfo});



  PostSubscriptionsReq.fromJson(Map<String, dynamic> json) {
    planId = json['plan_id'];
    totalCount = json['total_count'];
    quantity = json['quantity'];
    startAt = json['start_at'];
    expireBy = json['expire_by'];
    customerNotify = json['customer_notify'];
    notes = json['notes'] != null ? new Notes1.fromJson(json['notes']) : null;
    notifyInfo = json['notify_info'] != null
        ? new NotifyInfo.fromJson(json['notify_info'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plan_id'] = this.planId;
    data['total_count'] = this.totalCount;
    data['quantity'] = this.quantity;
    data['start_at'] = this.startAt;
    data['expire_by'] = this.expireBy;
    data['customer_notify'] = this.customerNotify;
    if (this.notes != null) {
      data['notes'] = this.notes!.toJson();
    }
    if (this.notifyInfo != null) {
      data['notify_info'] = this.notifyInfo!.toJson();
    }
    return data;
  }
}
class Notes1 {
  String? notesKey1;
  Notes1({this.notesKey1});
  Notes1.fromJson(Map<String, dynamic> json) {
    notesKey1 = json['notes_key_1'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['notes_key_1'] = this.notesKey1;
    return data;
  }
}
class NotifyInfo {
  String? notifyPhone;
  String? notifyEmail;
  NotifyInfo({this.notifyPhone, this.notifyEmail});
  NotifyInfo.fromJson(Map<String, dynamic> json) {
    notifyPhone = json['notify_phone'];
    notifyEmail = json['notify_email'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['notify_phone'] = this.notifyPhone;
    data['notify_email'] = this.notifyEmail;
    return data;
  }
}
