class GetPlansResp {
  String? entity;
  int? count;
  List<Items>? items;

  GetPlansResp({this.entity, this.count, this.items});

  GetPlansResp.fromJson(Map<String, dynamic> json) {
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
  int? interval;
  String? period;
  Item? item;
  List? notes;
  int? createdAt;

  Items(
      {this.id,
      this.entity,
      this.interval,
      this.period,
      this.item,
      this.notes,
      this.createdAt});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    entity = json['entity'];
    interval = json['interval'];
    period = json['period'];
    item = json['item'] != null ? Item.fromJson(json['item']) : null;
    if (json['notes'] != null) {
      notes = [];
      json['notes'].forEach((v) {
        notes?.add(v);
      });
    }
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
    if (this.interval != null) {
      data['interval'] = this.interval;
    }
    if (this.period != null) {
      data['period'] = this.period;
    }
    if (this.item != null) {
      data['item'] = this.item?.toJson();
    }
    if (this.notes != null) {
      data['notes'] = this.notes?.map((v) => v).toList();
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    return data;
  }
}

class Item {
  String? id;
  bool? active;
  String? name;
  String? description;
  int? amount;
  int? unitAmount;
  String? currency;
  String? type;
  Null? unit;
  bool? taxInclusive;
  Null? hsnCode;
  Null? sacCode;
  Null? taxRate;
  Null? taxId;
  Null? taxGroupId;
  int? createdAt;
  int? updatedAt;

  Item(
      {this.id,
      this.active,
      this.name,
      this.description,
      this.amount,
      this.unitAmount,
      this.currency,
      this.type,
      this.unit,
      this.taxInclusive,
      this.hsnCode,
      this.sacCode,
      this.taxRate,
      this.taxId,
      this.taxGroupId,
      this.createdAt,
      this.updatedAt});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    active = json['active'];
    name = json['name'];
    description = json['description'];
    amount = json['amount'];
    unitAmount = json['unit_amount'];
    currency = json['currency'];
    type = json['type'];
    unit = json['unit'];
    taxInclusive = json['tax_inclusive'];
    hsnCode = json['hsn_code'];
    sacCode = json['sac_code'];
    taxRate = json['tax_rate'];
    taxId = json['tax_id'];
    taxGroupId = json['tax_group_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.active != null) {
      data['active'] = this.active;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.unitAmount != null) {
      data['unit_amount'] = this.unitAmount;
    }
    if (this.currency != null) {
      data['currency'] = this.currency;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.unit != null) {
      data['unit'] = this.unit;
    }
    if (this.taxInclusive != null) {
      data['tax_inclusive'] = this.taxInclusive;
    }
    if (this.hsnCode != null) {
      data['hsn_code'] = this.hsnCode;
    }
    if (this.sacCode != null) {
      data['sac_code'] = this.sacCode;
    }
    if (this.taxRate != null) {
      data['tax_rate'] = this.taxRate;
    }
    if (this.taxId != null) {
      data['tax_id'] = this.taxId;
    }
    if (this.taxGroupId != null) {
      data['tax_group_id'] = this.taxGroupId;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    return data;
  }
}
