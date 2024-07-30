

import 'package:store_app_version1/helper/api.dart';

import '../models/product_model.dart';

class UpdateProduct{
  Future<ProductModel> updateProduct({
    required String title,
    required String desc,
    required num price,
    required String image,
    required String category,
    required int id,
}) async{
    print(id);
    Map<String, dynamic> data = await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      "title": title,
      "price": price,
      "description": desc,
      "image": image,
      "category": category,
    },);
    return ProductModel.fromJson(data);
  }
}