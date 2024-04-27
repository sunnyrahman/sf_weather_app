class SystemResponse {
  bool? success;
  System? system;

  SystemResponse({this.success, this.system});

  SystemResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    system =
    json['system'] != null ? new System.fromJson(json['system']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.system != null) {
      data['system'] = this.system!.toJson();
    }
    return data;
  }
}

class System {
  int? id;
  String? name;
  String? nameBn;
  String? email;
  int? phone;
  String? address;
  String? addressBn;
  String? logo;
  String? facebook;
  String? youtube;
  String? twitter;
  String? instagram;
  String? linkedin;
  int? status;
  String? createdAt;
  String? updatedAt;

  System(
      {this.id,
        this.name,
        this.nameBn,
        this.email,
        this.phone,
        this.address,
        this.addressBn,
        this.logo,
        this.facebook,
        this.youtube,
        this.twitter,
        this.instagram,
        this.linkedin,
        this.status,
        this.createdAt,
        this.updatedAt});

  System.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameBn = json['name_bn'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    addressBn = json['address_bn'];
    logo = json['logo'];
    facebook = json['facebook'];
    youtube = json['youtube'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    linkedin = json['linkedin'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_bn'] = this.nameBn;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['address_bn'] = this.addressBn;
    data['logo'] = this.logo;
    data['facebook'] = this.facebook;
    data['youtube'] = this.youtube;
    data['twitter'] = this.twitter;
    data['instagram'] = this.instagram;
    data['linkedin'] = this.linkedin;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
