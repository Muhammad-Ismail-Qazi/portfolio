class ContactModel {
  late String name;
  late String email;
  late String phone;
  late String description;

  ContactModel(this.name, this.email, this.phone, this.description);

  Map<String, dynamic> toMap() {
    print("data inside the to map");
    print(name);
    print(email);
    print(phone);
    print(description);
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'description': description,
    };
  }
}