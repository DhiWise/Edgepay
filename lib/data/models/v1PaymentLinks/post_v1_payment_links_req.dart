class PostV1PaymentLinksReq {
  int? amount;
  String? currency;
  bool? acceptPartial;
  int? firstMinPartialAmount;
  int? expireBy;
  String? referenceId;
  String? description;
  Customer? customer;
  Notify? notify;
  bool? reminderEnable;
  Notes? notes;
  String? callbackUrl;
  String? callbackMethod;

  PostV1PaymentLinksReq(
      {this.amount,
      this.currency,
      this.acceptPartial,
      this.firstMinPartialAmount,
      this.expireBy,
      this.referenceId,
      this.description,
      this.customer,
      this.notify,
      this.reminderEnable,
      this.notes,
      this.callbackUrl,
      this.callbackMethod});

  PostV1PaymentLinksReq.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currency = json['currency'];
    acceptPartial = json['accept_partial'];
    firstMinPartialAmount = json['first_min_partial_amount'];
    expireBy = json['expire_by'];
    referenceId = json['reference_id'];
    description = json['description'];
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    notify = json['notify'] != null ? Notify.fromJson(json['notify']) : null;
    reminderEnable = json['reminder_enable'];
    notes = json['notes'] != null ? Notes.fromJson(json['notes']) : null;
    callbackUrl = json['callback_url'];
    callbackMethod = json['callback_method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.currency != null) {
      data['currency'] = this.currency;
    }
    if (this.acceptPartial != null) {
      data['accept_partial'] = this.acceptPartial;
    }
    if (this.firstMinPartialAmount != null) {
      data['first_min_partial_amount'] = this.firstMinPartialAmount;
    }
    if (this.expireBy != null) {
      data['expire_by'] = this.expireBy;
    }
    if (this.referenceId != null) {
      data['reference_id'] = this.referenceId;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.customer != null) {
      data['customer'] = this.customer?.toJson();
    }
    if (this.notify != null) {
      data['notify'] = this.notify?.toJson();
    }
    if (this.reminderEnable != null) {
      data['reminder_enable'] = this.reminderEnable;
    }
    if (this.notes != null) {
      data['notes'] = this.notes?.toJson();
    }
    if (this.callbackUrl != null) {
      data['callback_url'] = this.callbackUrl;
    }
    if (this.callbackMethod != null) {
      data['callback_method'] = this.callbackMethod;
    }
    return data;
  }
}

class Customer {
  String? name;
  String? contact;
  String? email;

  Customer({this.name, this.contact, this.email});

  Customer.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contact = json['contact'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.contact != null) {
      data['contact'] = this.contact;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    return data;
  }
}

class Notify {
  bool? sms;
  bool? email;

  Notify({this.sms, this.email});

  Notify.fromJson(Map<String, dynamic> json) {
    sms = json['sms'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.sms != null) {
      data['sms'] = this.sms;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    return data;
  }
}

class Notes {
  String? policyName;

  Notes({this.policyName});

  Notes.fromJson(Map<String, dynamic> json) {
    policyName = json['policy_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.policyName != null) {
      data['policy_name'] = this.policyName;
    }
    return data;
  }
}
