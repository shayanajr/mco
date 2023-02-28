import 'dart:convert';


class User {
  final String? id;
  final String? name;
  final String? email;
  final String? identity;
  final String? mobile;
  final String? status;
  final List<String>? roles;
  final int? last_login;
  final String? refresh_token;
  final String? access_token;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.identity,
    required this.mobile,
    required this.status,
    required this.roles,
    required this.last_login,
    required this.access_token,
    required this.refresh_token,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "identity": identity,
      "mobile": mobile,
      "status": status,
      "roles": roles,
      "last_login": last_login,
      "access_token": access_token,
      "refresh_token": refresh_token,
    };
  }

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      email: map["email"],
      identity: map["identity"],
      mobile: map["mobile"],
      status: map["status"],
      roles: map["roles"],
      last_login: map["last_login"],
      access_token: map["access_token"],
      refresh_token: map["refresh_token"],
    );
  }

  // factory User.fromJson(String value) {
  //   return User.fromMap(json.decode(value));
  // }

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        identity: json["identity"],
        mobile: json["mobile"],
        status: json["status"],
        roles: List<String>.from(json["roles"].map((x) => x)),
        last_login: json["last_login"],
        access_token: json["access_token"],
        refresh_token: json["refresh_token"],
      );
}
