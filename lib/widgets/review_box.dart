import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trogon_task/utils/const_box.dart';
import 'package:trogon_task/utils/const_colors.dart';
import 'package:trogon_task/widgets/widgets.dart';

// Widget productRatingbox() {
//   return Container(
//     // margin: const EdgeInsets.symmetric(horizontal: 18),
//     padding: const EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       color: kwhite,
//       border: Border.all(
//         color: const Color.fromARGB(255, 238, 236, 236),
//       ),
//       borderRadius: BorderRadius.circular(8),
//     ),
//     child: Column(
//       children: [
//         Row(
//           children: [
//             Column(
//               children: [
//                 semiBoldChoiceText(
//                     text: "reviews", size: 32, color: mainPurple),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: List.generate(
//                     5,
//                     (index) => Container(
//                       padding: const EdgeInsets.only(right: 1, bottom: 4),
//                       child: SvgPicture.asset(
//                         'assets/images/star-review.svg',
//                         height: 15,
//                         colorFilter: ColorFilter.mode(
//                             4 >= (index + 1)
//                                 ? Colors.yellow
//                                 : Colors.grey.shade300,
//                             BlendMode.srcIn),
//                       ),
//                     ),
//                   ),
//                 ),
//                 semiBoldChoiceText(
//                   text: 'Course Rating',
//                   size: 10,
//                   color: const Color.fromARGB(255, 15, 187, 195),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }

Widget userReviewWidget(
    {required String initials,
    required String rating,
    required String review}) {
  int ratingValue = int.tryParse(rating) ?? 0;
  return Container(
    margin: const EdgeInsets.only(top: 6),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: kwhite,
      border: Border.all(
        color: const Color.fromARGB(255, 238, 236, 236),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 15, 187, 195), shape: BoxShape.circle),
          child: Center(
              child: Text(
            initials,
            style: TextStyle(color: kwhite),
          )),
        ),
        wBox,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  semiBoldChoiceText(
                    text: 'Jhon Doe ',
                    size: 12,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  5,
                  (index) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: SvgPicture.asset(
                      'assets/images/star-review.svg',
                      height: 15,
                      colorFilter: ColorFilter.mode(
                          ratingValue >= (index + 1)
                              ? Colors.yellow
                              : Colors.grey.shade300,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
              review.isEmpty ? shrinked : regularText(review, 11),
              hBox,
              semiBoldChoiceText(
                text: 'Was this review helpful?',
                size: 11,
              ),
              hBox,
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        // color: mainPurple,
                        border: Border.all(color: mainPurple),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: mainPurple,
                      size: 17,
                    ),
                  ),
                  wBox,
                  wBox,
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        // color: mainPurple,
                        border: Border.all(color: mainPurple),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.thumb_down_alt_outlined,
                      color: mainPurple,
                      size: 17,
                    ),
                  ),
                  wMBox,
                  semiBoldChoiceText(text: 'Report', size: 11),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
