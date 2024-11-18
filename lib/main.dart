import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogon_task/controller/product_controller.dart';
import 'package:trogon_task/view/splash_screen/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return GetMaterialApp(
      onInit: () => controller.fetchAllProducts(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
