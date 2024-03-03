import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

//collection references uses for create a collection inside DB
CollectionReference<Map<String, dynamic>> contactCollection =
    firebaseFirestore.collection("contact");