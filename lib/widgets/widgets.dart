import 'package:flutter/material.dart';
import 'package:trogon_task/utils/const_box.dart';
import 'package:trogon_task/utils/const_colors.dart';

PreferredSizeWidget appBarProduct(String title) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
    ),
    centerTitle: true,
    surfaceTintColor: Colors.white,
    backgroundColor: kwhite,

    elevation: 7,
    shadowColor: Colors.black.withOpacity(0.5),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
    ),
  );
}

Widget headersProdct(
    {String? text1, String? text2, Color? divColor, Color? textC}) {
  return Row(
    children: [
      Container(
        color: Colors.yellow,
        height: 40,
        width: 0,
        child: VerticalDivider(
          thickness: 3,
          color: divColor ?? Colors.yellow,
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: text1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: textC ?? const Color.fromARGB(255, 30, 35, 44),
                  )),
              WidgetSpan(child: wBox),
              TextSpan(
                  text: text2,
                  style: TextStyle(
                    color: textC ?? const Color.fromARGB(255, 30, 35, 44),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
        ),
      ),
      const Expanded(
        child: Divider(
          color: Colors.yellow,
          thickness: 3,
        ),
      ),
    ],
  );
}

Widget semiBoldChoiceText(
    {required String text,
    double? size,
    TextAlign? textAlign,
    Color? color,
    TextOverflow? overflow}) {
  return Text(
    text,
    style: TextStyle(fontSize: size, fontWeight: FontWeight.w600, color: color),
    textAlign: textAlign,
    overflow: overflow,
  );
}

Text regularText(String text, double size,
    {TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Color? color}) {
  return Text(
    text,
    maxLines: maxLines,
    style: TextStyle(
        color: color ?? const Color.fromARGB(255, 132, 131, 131),
        fontSize: size,
        fontWeight: FontWeight.w400),
    textAlign: textAlign,
    overflow: overflow,
  );
}
