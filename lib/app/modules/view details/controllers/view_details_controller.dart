import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ViewDetailsController extends GetxController {
  //TODO: Implement ViewDetailsController

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getData() {
    return FirebaseFirestore.instance.collection('contact').snapshots();
  }
}