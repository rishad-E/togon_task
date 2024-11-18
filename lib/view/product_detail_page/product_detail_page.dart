import 'package:flutter/material.dart';
import 'package:trogon_task/model/product_model.dart';
import 'package:trogon_task/utils/const_box.dart';
import 'package:trogon_task/utils/const_colors.dart';
import 'package:trogon_task/widgets/product_info.dart';
import 'package:trogon_task/widgets/review_box.dart';
import 'package:trogon_task/widgets/widgets.dart';

class ProductDetailPage extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String disPrice;
  final String discount;
  final bool? availability;
  final String brand;
  final String rating;
  final List<Review>? review;
  const ProductDetailPage(
      {super.key,
      required this.name,
      required this.description,
      required this.price,
      required this.disPrice,
      required this.discount,
      required this.availability,
      required this.brand,
      required this.rating, required this.review});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarProduct(''),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Colors.yellow,
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      child: Center(child: Text('image')),
                    ),
                  ),
                ),
                const Divider(thickness: 2.5),
                hMBox,
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    color: kblack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                prefferedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: kblack,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                prefferedBox(height: 8),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 116, 118, 119)),
                    ),
                    wBox,
                    Center(
                      child: Text(
                      " ₹$disPrice",
                        style: TextStyle(fontSize: 15, color: kblack),
                      ),
                    ),
                  ],
                ),
                prefferedBox(height: 12),
                const Text(
                  "Product Details",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 116, 118, 119),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                hBox,
                productInfo(text1: "Name:", text2: name),
                productInfo(text1: "description:", text2: description),
                productInfo(text1: "discount:", text2: discount),
                productInfo(
                    text1: "availability:",
                    text2: availability == true ? 'YES' : "NO"),
                productInfo(text1: "brand:", text2: brand),
                productInfo(
                  text1: "rating:",
                  text2: "⭐ $rating",
                ),
                prefferedBox(height: 10),
                // productRatingbox(),
                ...List.generate(
                  2,
                  (index) {
                    return userReviewWidget(
                      initials: index.toString(),
                      rating: "4",
                      review: "review",
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
