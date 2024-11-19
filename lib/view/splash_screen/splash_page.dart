import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:trogon_task/utils/const_colors.dart';
import 'package:trogon_task/view/product_page/product_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    goTohome();
    return Scaffold(
      backgroundColor:bgColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset('assets/lottie/Animation - 1732031294517.json'),
            // prefferedBox(height: 30),
            // const Text(
            //   'welcome to E-Kart',
            //   style: TextStyle(
            //     color: Color.fromARGB(255, 16, 106, 150),
            //     fontWeight: FontWeight.w600,
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Future<void> goTohome() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => ProductPage());
  }
}
