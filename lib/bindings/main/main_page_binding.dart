import 'package:flutter_kiyafet_app/controllers/main/main_page_controller.dart';
import 'package:get/get.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(MainPageController.new);
  }
}
