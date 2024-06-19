import 'package:flutter_kiyafet_app/bindings/auth/sign_in_page_binding.dart';
import 'package:flutter_kiyafet_app/bindings/auth/sign_up_page_binding.dart';
import 'package:flutter_kiyafet_app/bindings/main/main_page_binding.dart';
import 'package:flutter_kiyafet_app/controllers/main/main_page_controller.dart';
import 'package:flutter_kiyafet_app/pages/auth/sign_in_page.dart';
import 'package:flutter_kiyafet_app/pages/auth/sign_up_page.dart';
import 'package:flutter_kiyafet_app/pages/main/main_page.dart';
import 'package:flutter_kiyafet_app/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class Pages {
  static List<GetPage<Object>> pages = [
    GetPage(
      name: Routes.signInPage,
      page: () => const SignInPage(),
      binding: SignInPageBinding(),
    ),
    GetPage(
      name: Routes.signUpPage,
      page: () => const SignUpPage(),
      binding: SignUpPageBinding(),
    ),
    GetPage(
      name: Routes.mainPage,
      page: () => const MainPage(),
      binding: MainPageBinding(),
    ),
  ];
}
