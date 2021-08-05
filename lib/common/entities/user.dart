// 注册请求
class UserRegisterRequestEntity {
  String username;
  String password;

  UserRegisterRequestEntity({
    required this.username,
    required this.password,
  });

  factory UserRegisterRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserRegisterRequestEntity(
        username: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": username,
        "password": password,
      };
}

// 登录请求
class UserLoginRequestEntity {
  String username;
  String password;

  UserLoginRequestEntity({
    required this.username,
    required this.password,
  });

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        username: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": username,
        "password": password,
      };
}

// 登录返回
class UserLoginResponseEntity {
  String? token;
  String? displayName;
  List<String>? channels;

  UserLoginResponseEntity({
    this.token,
    this.displayName,
    this.channels,
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
