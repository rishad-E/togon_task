import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:trogon_task/model/product_model.dart';
import 'package:trogon_task/utils/const_api.dart';
import 'package:trogon_task/widgets/error_snackbar.dart';

class ProductService {
  Dio dio = Dio();

  Future<List<ProductModel>?> fetchProductData() async {
    String path = Apis().baseUrl + Apis().endPoint;

    try {
      Response response = await dio.get(
        path,
        options: Options(validateStatus: (status) => status! < 599),
      );

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        final res = data.map((json) => ProductModel.fromJson(json)).toList();
        // log(res.toString());
        return res;
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        // log('Server error: ${e.message}', name: 'save education info error');
        log('Exception: ${e.toString()}', name: ' result error');
        throw SnackbarPopUps.popUpB(
            'Error fetching data...Please try after sometime');
      } else {
        log('Exception: ${e.toString()}', name: ' result error');
        throw SnackbarPopUps.popUpB(
            'Error fetching data...Please try after sometime');
      }
    }
    return null;
  }
}
