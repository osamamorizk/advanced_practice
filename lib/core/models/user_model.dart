class UserModel {
  final String token;
  final String username;

  UserModel({required this.token, required this.username});
  factory UserModel.fromJson(json) {
    return UserModel(
      token: json['data']['token'],
      username: json['data']['username'],
    );
  }
}
