import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  Data data;
  bool error;
  int status;
  List<String> message;
  String token;

  User({
    required this.data,
    required this.error,
    required this.status,
    required this.message,
    required this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        data: Data.fromJson(json["data"]),
        error: json["error"],
        status: json["status"],
        message: List<String>.from(json["message"].map((x) => x)),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "error": error,
        "status": status,
        "message": List<dynamic>.from(message.map((x) => x)),
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
  String imagePath;

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
    required this.imagePath,
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
        imagePath: json["imagePath"],
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
        "imagePath": imagePath,
      };
}
