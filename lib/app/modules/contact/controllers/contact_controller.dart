import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/firebase.dart';
import '../model/contact_model.dart';

class ContactController extends GetxController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController descriptionController;

  ContactModel contactModel = ContactModel(
    name: '',
    email: '',
    phone: '',
    description: '',
  );

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    descriptionController.dispose();
    super.onClose();
  }

  Future<void> sendData() async {
    contactModel = ContactModel(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      description: descriptionController.text,
    );

    try {
      await contactCollection.add(contactModel.toMap());
      Get.snackbar("Success", "Your request has been sent successfully");
    } catch (error) {
      Get.snackbar('Error', error.toString());
      debugPrint(error.toString());
    }
  }
}