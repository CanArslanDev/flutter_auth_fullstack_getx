import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kiyafet_app/controllers/base_controller.dart';
import 'package:flutter_kiyafet_app/routes/routes.dart';
import 'package:flutter_kiyafet_app/services/auth_service.dart';
import 'package:flutter_kiyafet_app/ui/alerts/snackbar.dart';
import 'package:get/get.dart';

class SignUpPageController extends BaseController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  Rx<bool> showPassword = false.obs;
  Future<void> signUp() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final name = nameController.text.trim();
    final phone = phoneController.text.trim();
    if (email.isEmpty || password.isEmpty && name.isEmpty && phone.isEmpty) {
      showErrorSnackbar('Error', 'Please fill in all fields');
      return;
    }
    try {
      await await AuthService()
          .signUp(name, email, phone, password)
          .then((value) => Get.offAllNamed<Object>(Routes.signInPage));
    } on FirebaseAuthException catch (error) {
      showErrorSnackbar('Error', error.message.toString());
    }
  }
}
