class GetPayK93XyAnu5kuCXAResp {
  String? id;
  String? entity;
  int? amount;
  String? currency;
  String? status;
  String? orderId;
  Null? invoiceId;
  bool? international;
  String? method;
  int? amountRefunded;
  Null? refundStatus;
  bool? captured;
  String? description;
  Null? cardId;
  Null? bank;
  Null? wallet;
  String? vpa;
  String? email;
  String? contact;
  Notes? notes;
  int? fee;
  int? tax;
  Null? errorCode;
  Null? errorDescription;
  Null? errorSource;
  Null? errorStep;
  Null? errorReason;
  AcquirerData? acquirerData;
  int? createdAt;

  GetPayK93XyAnu5kuCXAResp(
      {this.id,
      this.entity,
      this.amount,
      this.currency,
      this.status,
      this.orderId,
      this.invoiceId,
      this.international,
      this.method,
      this.amountRefunded,
      this.refundStatus,
      this.captured,
      this.description,
      this.cardId,
      this.bank,
      this.wallet,
      this.vpa,
      this.email,
      this.contact,
      this.notes,
      this.fee,
      this.tax,
      this.errorCode,
      this.errorDescription,
      this.errorSource,
      this.errorStep,
      this.errorReason,
      this.acquirerData,
      this.createdAt});

  GetPayK93XyAnu5kuCXAResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    entity = json['entity'];
    amount = json['amount'];
    currency = json['currency'];
    status = json['status'];
    orderId = json['order_id'];
    invoiceId = json['invoice_id'];
    international = json['international'];
    method = json['method'];
    amountRefunded = json['amount_refunded'];
    refundStatus = json['refund_status'];
    captured = json['captured'];
    description = json['description'];
    cardId = json['card_id'];
    bank = json['bank'];
    wallet = json['wallet'];
    vpa = json['vpa'];
    email = json['email'];
    contact = json['contact'];
    notes = json['notes'] != null ? Notes.fromJson(json['notes']) : null;
    fee = json['fee'];
    tax = json['tax'];
    errorCode = json['error_code'];
    errorDescription = json['error_description'];
    errorSource = json['error_source'];
    errorStep = json['error_step'];
    errorReason = json['error_reason'];
    acquirerData = json['acquirer_data'] != null
        ? AcquirerData.fromJson(json['acquirer_data'])
        : null;
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.entity != null) {
      data['entity'] = this.entity;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.currency != null) {
      data['currency'] = this.currency;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.orderId != null) {
      data['order_id'] = this.orderId;
    }
    if (this.invoiceId != null) {
      data['invoice_id'] = this.invoiceId;
    }
    if (this.international != null) {
      data['international'] = this.international;
    }
    if (this.method != null) {
      data['method'] = this.method;
    }
    if (this.amountRefunded != null) {
      data['amount_refunded'] = this.amountRefunded;
    }
    if (this.refundStatus != null) {
      data['refund_status'] = this.refundStatus;
    }
    if (this.captured != null) {
      data['captured'] = this.captured;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.cardId != null) {
      data['card_id'] = this.cardId;
    }
    if (this.bank != null) {
      data['bank'] = this.bank;
    }
    if (this.wallet != null) {
      data['wallet'] = this.wallet;
    }
    if (this.vpa != null) {
      data['vpa'] = this.vpa;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.contact != null) {
      data['contact'] = this.contact;
    }
    if (this.notes != null) {
      data['notes'] = this.notes?.toJson();
    }
    if (this.fee != null) {
      data['fee'] = this.fee;
    }
    if (this.tax != null) {
      data['tax'] = this.tax;
    }
    if (this.errorCode != null) {
      data['error_code'] = this.errorCode;
    }
    if (this.errorDescription != null) {
      data['error_description'] = this.errorDescription;
    }
    if (this.errorSource != null) {
      data['error_source'] = this.errorSource;
    }
    if (this.errorStep != null) {
      data['error_step'] = this.errorStep;
    }
    if (this.errorReason != null) {
      data['error_reason'] = this.errorReason;
    }
    if (this.acquirerData != null) {
      data['acquirer_data'] = this.acquirerData?.toJson();
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
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

class AcquirerData {
  String? rrn;
  String? upiTransactionId;

  AcquirerData({this.rrn, this.upiTransactionId});

  AcquirerData.fromJson(Map<String, dynamic> json) {
    rrn = json['rrn'];
    upiTransactionId = json['upi_transaction_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.rrn != null) {
      data['rrn'] = this.rrn;
    }
    if (this.upiTransactionId != null) {
      data['upi_transaction_id'] = this.upiTransactionId;
    }
    return data;
  }
}
