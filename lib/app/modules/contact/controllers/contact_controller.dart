import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/firebase.dart';
import '../model/contact_model.dart';

class ContactController extends GetxController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController descriptionController;

  late ContactModel contactModel;

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    descriptionController = TextEditingController();
    contactModel = ContactModel(
        "", "", "", ""); // Initialize ContactModel with default values
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
      nameController.text,
      emailController.text,
      phoneController.text,
      descriptionController.text,
    );

    try {
      await contactCollection.doc().set(contactModel.toMap());
      Get.snackbar("Success", "You request is send successfully");
    } catch (error) {
      Get.snackbar('Error', error.toString());
      if (kDebugMode) {
        print(error);
      }
    }
  }
}