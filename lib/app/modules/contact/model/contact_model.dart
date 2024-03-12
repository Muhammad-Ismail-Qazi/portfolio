class ContactModel {
  late String name;
  late String email;
  late String phone;
  late String description;

  ContactModel(this.name, this.email, this.phone, this.description);

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'phone': this.phone,
      'description': this.description,
    };
  }

  ContactModel.fromMap(Map<String, dynamic> map) {
    name:
    map['name'];
    email:
    map['email'];
    phone:
    map['phone'];
    description:
    map['description'];
  }
}