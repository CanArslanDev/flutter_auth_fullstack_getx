import 'package:flutter_kiyafet_app/controllers/base_controller.dart';
import 'package:flutter_kiyafet_app/routes/routes.dart';
import 'package:flutter_kiyafet_app/services/auth_service.dart';
import 'package:get/get.dart';

class MainPageController extends BaseController {
  Future<void> logOut() async {
    await AuthService().signOut();
    await Get.offAllNamed<Object>(Routes.signInPage);
  }
}
