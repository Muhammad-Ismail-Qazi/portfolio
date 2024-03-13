class ContactModel {
  late String name;
  late String email;
  late String phone;
  late String description;

  ContactModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'description': description,
    };
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      description: map['description'] ?? '',
    );
  }
}