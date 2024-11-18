import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogon_task/view/product_page/product_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goTohome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // width: 100,
          height: double.infinity,
          color: const Color.fromARGB(255, 79, 162, 229),
          child: Image.asset(
            'assets/images/OIP.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

Future<void> goTohome() async {
  await Future.delayed(const Duration(seconds: 3));
  Get.offAll(() => ProductPage());
}
