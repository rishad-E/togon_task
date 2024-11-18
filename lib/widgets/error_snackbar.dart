import 'package:flutter/material.dart';
import 'package:get/get.dart';

void errorSnackBar(BuildContext context, String value) {
  return WidgetsBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18))),
          backgroundColor: Colors.red,
          content: Center(child: Text(value))),
    );
  });
}

class SnackbarPopUps {
  static Future<void> popUpB(String text) async {
    Get.showSnackbar(
      GetSnackBar(
        snackStyle: SnackStyle.FLOATING,
        message: text,
        margin: const EdgeInsets.all(10),
        borderRadius: 8,
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static Future<void> popUpG(String text, BuildContext context) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: const TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.black,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
