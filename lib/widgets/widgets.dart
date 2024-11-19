
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

Widget boardIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kwhite,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 234, 232, 232),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: IconButton(
          iconSize: 19,
          visualDensity: VisualDensity.compact,
          onPressed: () {},
          icon: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(1.0, -1.0),
            child: Icon(
              Icons.sort_outlined,
              color: kblack,
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(right: 16, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kwhite,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 234, 232, 232),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: IconButton(
          iconSize: 19,
          visualDensity: VisualDensity.compact,
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
      ),
    ],
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
