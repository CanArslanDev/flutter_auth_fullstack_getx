// ignore_for_file: unnecessary_overrides, public_member_api_docs

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

//Base Controller For Getx
class BaseController extends GetxController {
  FirebaseFirestore? firestore;
  @override
  void onInit() {
    super.onInit();
    firestore = FirebaseFirestore.instance;
    // ignore: avoid_print
    // print("Starting base controller");
  }

  @override
  void onClose() {
    super.onClose();
    // ignore: avoid_print
    // print("Starting base controller");
  }
}
