import 'package:flutter/material.dart';
import 'package:flutter_kiyafet_app/controllers/main/main_page_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class MainPage extends GetView<MainPageController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: ElevatedButton(
          onPressed: () => controller.logOut(), child: Text('Log Out')),
    );
  }
}
