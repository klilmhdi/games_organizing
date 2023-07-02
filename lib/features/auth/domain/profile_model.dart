class ProfileModel {
  bool? status;
  int? code;
  String? message;
  Data? data;

  ProfileModel({this.status, this.code, this.message, this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['data'] = this.data != null ? this.data!.toJson() : null;
    return data;
  }
}

class Data {
  int? id;
  String? token;
  String? name;
  String? email;
  String? images;
  Gender? gender;
  Gender? activeCode;
  String? lat;
  String? long;
  String? location;

  Data(
      {this.id,
        this.token,
        this.name,
        this.email,
        this.images,
        this.gender,
        this.activeCode,
        this.lat,
        this.long,
        this.location});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
    name = json['name'];
    email = json['email'];
    images = json['images'];
    gender =
    json['gender'] != null ? Gender.fromJson(json['gender']) : null;
    activeCode = json['activeCode'] != null
        ? Gender.fromJson(json['activeCode'])
        : null;
    lat = json['lat'];
    long = json['long'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['token'] = token;
    data['name'] = name;
    data['email'] = email;
    data['images'] = images;
    // if (gender != null) {
    //   data['gender'] = gender!.toJson();
    // }
    data['gender'] = gender != null ? gender!.toJson() : null;
    // if (activeCode != null) {
    //   data['activeCode'] = activeCode!.toJson();
    // }
    data['activeCode'] = activeCode != null ? activeCode!.toJson() : null;
    data['lat'] = lat;
    data['long'] = long;
    data['location'] = location;
    return data;
  }
}

class Gender {
  int? id;
  String? name;

  Gender({this.id, this.name});

  Gender.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
