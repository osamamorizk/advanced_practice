class SignUpData {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final int gender;
  final String phone;

  SignUpData({
    required this.phone,
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.gender,
  });
}
