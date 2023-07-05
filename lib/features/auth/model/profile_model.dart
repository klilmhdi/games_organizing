class UserModel {
  final bool status;
  final int code;
  final String message;
  final Data? data;

  UserModel({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      status: json['status'],
      code: json['code'],
      message: json['status']
          ? json['message']
          : json['message']['email'][0] ?? json['message'][0],
      data: json['status'] ? Data.fromJson(json['data']) : null,
    );
  }
}

class Data {
  final int id;
  final String token;
  final String name;
  final String email;
  final String images;
  final Gender gender;
  final Gender activeCode;
  final String lat;
  final String long;
  final String location;

  Data({
    required this.id,
    required this.token,
    required this.name,
    required this.email,
    required this.images,
    required this.gender,
    required this.activeCode,
    required this.lat,
    required this.long,
    required this.location,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      token: json['token'],
      name: json['name'],
      email: json['email'],
      images: json['images'],
      gender: Gender.fromJson(json['gender']),
      activeCode: Gender.fromJson(json['activeCode']),
      lat: json['lat'],
      long: json['long'],
      location: json['location'],
    );
  }
}

class Gender {
  final int id;
  final String name;

  Gender({
    required this.id,
    required this.name,
  });

  factory Gender.fromJson(Map<String, dynamic> json) {
    return Gender(
      id: json['id'],
      name: json['name'],
    );
  }
}
