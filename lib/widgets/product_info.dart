
import 'package:flutter/material.dart';
import 'package:trogon_task/utils/const_box.dart';

Widget productInfo({required String text1, required String text2}) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color.fromARGB(255, 30, 35, 44),
              ),
            ),
            WidgetSpan(child: wBox),
            TextSpan(
                text: text2,
                style: const TextStyle(
                  color: Color.fromARGB(255, 30, 35, 44),
                  fontSize: 14,
                  // fontWeight: FontWeight.,
                )),
          ],
        ),
      ),
    );
