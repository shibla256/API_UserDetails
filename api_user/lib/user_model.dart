class UserModel {
  final String name;
  final String email;
  final String companyName;

  UserModel({
    required this.name,
    required this.email,
    required this.companyName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      companyName: json['company']['name'],
    );
  }
}
