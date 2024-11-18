import 'dart:developer';

import 'package:get/get.dart';
import 'package:trogon_task/model/product_model.dart';
import 'package:trogon_task/service/product_service.dart';

class ProductController extends GetxController {
  RxList<ProductModel> newArrival = <ProductModel>[].obs;
  RxList<ProductModel> trending = <ProductModel>[].obs;
  RxList<ProductModel> electronic = <ProductModel>[].obs;
  RxList<ProductModel> appliences = <ProductModel>[].obs;
  Map<String, int> trendCount = {};

  Future<void> fetchAllProducts() async {
    try {
      List<ProductModel>? data = await ProductService().fetchProductData();
      if (data != null) {
        if (data.isNotEmpty) {
          for (var item in data) {
            String? category = item.category;
            if (category != null) {
              trendCount[category] = (trendCount[category] ?? 0) + 1;
            }
          }
          List<ProductModel> trendingList = data
              .where((product) =>
                  product.category != null && trendCount[product.category] == 1)
              .toList();
          trending.assignAll(trendingList);
          // newArrival.addAll(data.sublist(0, 3));

          newArrival.addAll(data.take(3));
          for (var element in data) {
            if (element.category == 'Electronics') {
              electronic.add(element);
            }
            if (element.category == 'Appliances') {
              appliences.add(element);
            }
          }
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
