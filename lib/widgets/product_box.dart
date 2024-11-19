import 'package:flutter/material.dart';
import 'package:trogon_task/utils/const_colors.dart';

class ProductContainer extends StatelessWidget {
  final String name;
  final String price;
  final String disPrice;
  final String brand;
  final String rating;
  const ProductContainer(
      {super.key,
      required this.name,
      required this.price,
      required this.disPrice,
      required this.brand,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8, top: 5,bottom: 10),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kwhite,
        border: Border.all(
          color: const Color.fromARGB(255, 221, 220, 220),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 221, 220, 220),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: const Center(child: Text('image')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: kblack,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 116, 118, 119),
                    ),
                  ),
                  Text(
                    '₹ $disPrice',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                      color: kblack,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    brand,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                      color: kblack,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "⭐ $rating",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.014,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 116, 118, 119),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // return Container(
    //   margin: const EdgeInsets.only(right: 8, top: 5),
    //   // width: 150,
    //   height: MediaQuery.of(context).size.height * 0.24,
    //   width: MediaQuery.of(context).size.width * 0.4,
    //   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(12),
    //     color: kwhite,
    //     border: Border.all(color: const Color.fromARGB(255, 221, 220, 220)),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         height: MediaQuery.of(context).size.height * 0.1,
    //         width: double.infinity,
    //         color: const Color.fromARGB(255, 221, 220, 220),
    //         child: const ClipRRect(
    //           borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(12), topRight: Radius.circular(12)),
    //           child: Center(child: Text('image')),
    //         ),
    //       ),
    //       hBox,
    //       Text(
    //         name,
    //         style: TextStyle(
    //           fontSize: 12,
    //           color: kblack,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //       Row(
    //         children: [
    //           Text(
    //             price,
    //             style: const TextStyle(
    //                 fontSize: 10,
    //                 decoration: TextDecoration.lineThrough,
    //                 fontWeight: FontWeight.w600,
    //                 color: Color.fromARGB(255, 116, 118, 119)),
    //           ),
    //           wBox,
    //           Center(
    //             child: Text(
    //               disPrice,
    //               style: const TextStyle(
    //                   fontSize: 12, color: Color.fromARGB(255, 116, 118, 119)),
    //             ),
    //           ),
    //         ],
    //       ),
    //       Text(
    //         brand,
    //         style: TextStyle(
    //           fontSize: 12,
    //           color: kblack,
    //         ),
    //       ),
    //       Text(
    //         "⭐ $rating",
    //         style: const TextStyle(
    //             fontSize: 12,
    //             fontWeight: FontWeight.w600,
    //             color: Color.fromARGB(255, 116, 118, 119)),
    //       ),
    //     ],
    //   ),
    // );
  }
}
