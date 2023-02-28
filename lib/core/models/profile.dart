import 'dart:convert';

class Profile {
  final int? id;
  final String? name;
  final String? email;
  final String? identity;
  final String? mobile;
  var last_login;
  final String? first_name;
  final String? last_name;
  final String? id_number;
  final String? birthdate;
  final String? gender;
  final String? avatar;
  final String? ip_register;
  final String? register_source;
  final String? homepage;
  final String? phone;
  final String? address_1;
  final String? item_id;
  final String? country;
  final String? state;
  final String? city;
  final String? zip_code;
  final String? bank_name;
  final String? bank_card;
  final String? bank_account;

  Profile({
    this.id,
    this.name,
    this.email,
    this.identity,
    this.mobile,
    this.last_login,
    this.first_name,
    this.last_name,
    this.id_number,
    this.birthdate,
    this.gender,
    this.avatar,
    this.ip_register,
    this.register_source,
    this.homepage,
    this.phone,
    this.address_1,
    this.item_id,
    this.country,
    this.state,
    this.city,
    this.zip_code,
    this.bank_name,
    this.bank_card,
    this.bank_account,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "identity": identity,
      "mobile": mobile,
      "last_login": last_login,
      "first_name": first_name,
      "last_name": last_name,
      "id_number": id_number,
      "birthdate": birthdate,
      "gender": gender,
      "avatar": avatar,
      "ip_register": ip_register,
      "register_source": register_source,
      "homepage": homepage,
      "phone": phone,
      "address_1": address_1,
      "item_id": item_id,
      "country": country,
      "state": state,
      "city": city,
      "zip_code": zip_code,
      "bank_name": bank_name,
      "bank_card": bank_card,
      "bank_account": bank_account,
    };
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map["id"],
      name: map["name"],
      email: map["email"],
      identity: map["identity"],
      mobile: map["mobile"],
      last_login: map["last_login"],
      first_name: map["first_name"],
      last_name: map["last_name"],
      id_number: map["id_number"],
      birthdate: map["birthdate"],
      gender: map["gender"],
      avatar: map["avatar"],
      ip_register: map["ip_register"],
      register_source: map["register_source"],
      homepage: map["homepage"],
      phone: map["phone"],
      address_1: map["address_1"],
      item_id: map["item_id"],
      country: map["country"],
      state: map["state"],
      city: map["city"],
      zip_code: map["zip_code"],
      bank_name: map["bank_name"],
      bank_card: map["bank_card"],
      bank_account: map["bank_account"],
    );
  }

  // factory User.fromJson(String value) {
  //   return User.fromMap(json.decode(value));
  // }

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        identity: json["identity"],
        mobile: json["mobile"],
        last_login: json["last_login"],
        first_name: json["first_name"],
        last_name: json["last_name"],
        id_number: json["id_number"],
        birthdate: json["birthdate"],
        gender: json["gender"],
        avatar: json["avatar"],
        ip_register: json["ip_register"],
        register_source: json["register_source"],
        homepage: json["homepage"],
        phone: json["phone"],
        address_1: json["address_1"],
        item_id: json["item_id"],
        country: json["country"],
        state: json["state"],
        city: json["city"],
        zip_code: json["zip_code"],
        bank_name: json["bank_name"],
        bank_card: json["bank_card"],
        bank_account: json["bank_account"],
      );
}
