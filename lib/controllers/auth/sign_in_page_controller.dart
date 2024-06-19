import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kiyafet_app/controllers/base_controller.dart';
import 'package:flutter_kiyafet_app/routes/routes.dart';
import 'package:flutter_kiyafet_app/services/auth_service.dart';
import 'package:flutter_kiyafet_app/services/storage_service.dart';
import 'package:flutter_kiyafet_app/ui/alerts/snackbar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class SignInPageController extends BaseController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<bool> showPassword = false.obs;

  @override
  void onInit() {
    super.onInit();
    StorageService().getAutomaticSignAuth(
      () {
        Get.offAllNamed<Object>(Routes.mainPage);
      },
      Get.back<Object>,
    );
  }

  Future<void> signIn() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      showErrorSnackbar('Error', 'Please fill in all fields');
      return;
    }
    try {
      await AuthService().signIn(email, password).then((value) {
        StorageService().setEmailPasswordAuth(
          email,
          password,
        );
        Get.offAllNamed<Object>(Routes.mainPage);
      });
    } on FirebaseAuthException catch (error) {
      showErrorSnackbar('Error', error.message.toString());
    }
  }
}
