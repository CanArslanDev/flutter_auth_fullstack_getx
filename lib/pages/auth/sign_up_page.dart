import 'package:flutter/material.dart';
import 'package:flutter_kiyafet_app/controllers/auth/sign_up_page_controller.dart';
import 'package:flutter_kiyafet_app/routes/routes.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpPage extends GetView<SignUpPageController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 6.h, bottom: 6.h),
        child: Column(
          children: [
            TextField(
              controller: controller.nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller.phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone',
              ),
            ),
            const SizedBox(height: 16),
            Obx(
              () => TextField(
                controller: controller.passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: !controller.showPassword.value,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Obx(() => Checkbox(
                      value: controller.showPassword.value,
                      onChanged: (value) {
                        controller.showPassword.value = value!;
                      },
                    )),
                const Text('Show Password'),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.signUp();
              },
              child: const Text('Sign Up'),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Get.offAndToNamed<Object>(Routes.signInPage);
              },
              child: const Text(
                'Have an account?\nSign in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
