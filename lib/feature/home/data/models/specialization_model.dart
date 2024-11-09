class SpecializationModel {
  final int id;
  final String name;
  final List<DoctorsModel> doctors;

  SpecializationModel({
    required this.id,
    required this.name,
    required this.doctors,
  });
  factory SpecializationModel.fromJson(json) {
    return SpecializationModel(
      id: json['id'],
      name: json['name'],
      doctors: (json['doctors'] as List<dynamic>)
          .map((doctor) => DoctorsModel.fromJson(doctor))
          .toList(),
    );
  }
}

class DoctorsModel {
  final String name;
  final String phone;
  final String email;
  final String degree;
  final String gender;
  final String price;

  DoctorsModel({
    required this.name,
    required this.phone,
    required this.email,
    required this.degree,
    required this.gender,
    required this.price,
  });
  factory DoctorsModel.fromJson(json) {
    return DoctorsModel(
      name: json['name'] ?? 'name',
      phone: json['phone'] ?? 'name',
      email: json['email'] ?? 'name',
      degree: json['degree'] ?? 'name',
      gender: json['gender'] ?? 'name',
      price: json['price'] ?? 'name',
    );
  }
}
