import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogon_task/controller/product_controller.dart';
import 'package:trogon_task/utils/const_box.dart';
import 'package:trogon_task/utils/const_colors.dart';
import 'package:trogon_task/view/product_page/search_bar.dart';
import 'package:trogon_task/widgets/product_box.dart';
import 'package:trogon_task/widgets/widgets.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});
  final controller = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          color: bgColor,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boardIcons(),
                prefferedBox(height: 10),
                const SearchProduct(),
                prefferedBox(height: 15),
                headersProdct(
                  text1: 'New',
                  text2: 'Arrivals',
                  divColor: const Color.fromARGB(255, 148, 39, 143),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Obx(
                      () => Row(
                        children: [
                          wMBox,
                          ...List.generate(
                            controller.newArrival.length,
                            (index) {
                              final data = controller.newArrival[index];
                              return GestureDetector(
                                onTap: () {
                                  // Get.to(
                                  //     () => ProductDetailPage(
                                  //           name: data.name.toString(),
                                  //           description:
                                  //               data.description.toString(),
                                  //           discount: data.discount.toString(),
                                  //           availability: data.availability,
                                  //           price: data.price.toString(),
                                  //           disPrice: calculateDiscountedPrice(
                                  //               data.price?.toDouble(),
                                  //               data.discount),
                                  //           brand: data.brand.toString(),
                                  //           rating: data.rating.toString(),
                                  //           review: data.reviews,
                                  //         ),
                                  //     transition: Transition.fadeIn);
                                },
                                child: ProductContainer(
                                  name: data.name.toString(),
                                  price: data.price.toString(),
                                  disPrice: calculateDiscountedPrice(
                                      data.price?.toDouble(), data.discount),
                                  brand: data.brand.toString(),
                                  rating: data.rating.toString(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    )),
                headersProdct(
                    text1: 'Trending',
                    text2: 'Products',
                    divColor: const Color.fromARGB(255, 148, 39, 143)),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Obx(
                      () => Row(children: [
                        wMBox,
                        ...List.generate(
                          controller.trending.length,
                          (index) {
                            final data = controller.trending[index];
                            return GestureDetector(
                              onTap: () {
                                // Get.to(
                                //   () => ProductDetailPage(
                                //     name: data.name.toString(),
                                //     description: data.description.toString(),
                                //     discount: data.discount.toString(),
                                //     availability: data.availability,
                                //     price: data.price.toString(),
                                //     disPrice: calculateDiscountedPrice(
                                //         data.price?.toDouble(), data.discount),
                                //     brand: data.brand.toString(),
                                //     rating: data.rating.toString(),
                                //     review: data.reviews,
                                //   ),
                                //   transition: Transition.fadeIn,
                                // );
                              },
                              child: ProductContainer(
                                name: data.name.toString(),
                                price: data.price.toString(),
                                disPrice: calculateDiscountedPrice(
                                    data.price?.toDouble(), data.discount),
                                brand: data.brand.toString(),
                                rating: data.rating.toString(),
                              ),
                            );
                          },
                        ),
                      ]),
                    )),
                headersProdct(
                    text1: 'Electronic',
                    text2: 'Products',
                    divColor: const Color.fromARGB(255, 148, 39, 143)),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Obx(
                      () => Row(children: [
                        wMBox,
                        ...List.generate(
                          controller.electronic.length,
                          (index) {
                            final data = controller.electronic[index];
                            return GestureDetector(
                              onTap: () {
                                //   Get.to(
                                //   () => ProductDetailPage(
                                //     name: data.name.toString(),
                                //     description: data.description.toString(),
                                //     discount: data.discount.toString(),
                                //     availability: data.availability,
                                //     price: data.price.toString(),
                                //     disPrice: calculateDiscountedPrice(
                                //         data.price?.toDouble(), data.discount),
                                //     brand: data.brand.toString(),
                                //     rating: data.rating.toString(),
                                //     review: data.reviews,
                                //   ),
                                //   transition: Transition.fadeIn,
                                // );
                              },
                              child: ProductContainer(
                                name: data.name.toString(),
                                price: data.price.toString(),
                                disPrice: calculateDiscountedPrice(
                                    data.price?.toDouble(), data.discount),
                                brand: data.brand.toString(),
                                rating: data.rating.toString(),
                              ),
                            );
                          },
                        ),
                      ]),
                    )),
                headersProdct(
                  text1: 'Home',
                  text2: 'Appliences',
                  divColor: const Color.fromARGB(255, 148, 39, 143),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Obx(
                      () => Row(children: [
                        wMBox,
                        ...List.generate(
                          controller.appliences.length,
                          (index) {
                            final data = controller.appliences[index];
                            return GestureDetector(
                              onTap: () {
                                // Get.to(
                                // () => ProductDetailPage(
                                //   name: data.name.toString(),
                                //   description: data.description.toString(),
                                //   discount: data.discount.toString(),
                                //   availability: data.availability,
                                //   price: data.price.toString(),
                                //   disPrice: calculateDiscountedPrice(
                                //       data.price?.toDouble(), data.discount),
                                //   brand: data.brand.toString(),
                                //   rating: data.rating.toString(),
                                //   review: data.reviews,
                                // ),
                                // transition: Transition.fadeIn,
                                // );
                              },
                              child: ProductContainer(
                                name: data.name.toString(),
                                price: data.price.toString(),
                                disPrice: calculateDiscountedPrice(
                                    data.price?.toDouble(), data.discount),
                                brand: data.brand.toString(),
                                rating: data.rating.toString(),
                              ),
                            );
                          },
                        ),
                      ]),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String calculateDiscountedPrice(double? price, int? discount) {
  if (price == null || discount == null) {
    return 'Price not available'; // Handle the case where price is null
  }

  double discountedPrice = price - (price * (discount.toDouble() / 100));
  return discountedPrice.toStringAsFixed(2); // Format to 2 decimal places
}
