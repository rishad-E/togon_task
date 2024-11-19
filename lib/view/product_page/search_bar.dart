import 'package:flutter/material.dart';
import 'package:trogon_task/utils/const_box.dart';
import 'package:trogon_task/utils/const_colors.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kwhite,
        border: Border.all(color: const Color.fromARGB(255, 221, 220, 220)),
      ),
      child: Row(
        children: [
          const Icon(Icons.search),
          wMBox,
          const Text(
            'search your product',
            style: TextStyle(color: Color.fromARGB(255, 116, 118, 119)),
          )
        ],
      ),
    );
  }
}
