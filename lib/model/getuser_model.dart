import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  Data data;
  bool error;
  List<String> message;
  int status;
  String token;

  User({
    required this.data,
    required this.error,
    required this.message,
    required this.status,
    required this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        data: Data.fromJson(json["data"]),
        error: json["error"],
        message: List<String>.from(json["message"].map((x) => x)),
        status: json["status"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "error": error,
        "message": List<dynamic>.from(message.map((x) => x)),
        "status": status,
        "token": token,
      };
}

class Data {
  DateTime createdOn;
  int type;
  int authType;
  int activeStatus;
  String id;
  String email;
  String name;
  int phone;

  int v;

  Data({
    required this.createdOn,
    required this.type,
    required this.authType,
    required this.activeStatus,
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
    required this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        createdOn: DateTime.parse(json["createdOn"]),
        type: json["type"],
        authType: json["authType"],
        activeStatus: json["activeStatus"],
        id: json["_id"],
        email: json["email"],
        name: json["name"],
        phone: json["phone"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "createdOn": createdOn.toIso8601String(),
        "type": type,
        "authType": authType,
        "activeStatus": activeStatus,
        "_id": id,
        "email": email,
        "name": name,
        "phone": phone,
        "__v": v,
      };
}
