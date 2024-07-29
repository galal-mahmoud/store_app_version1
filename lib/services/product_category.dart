import 'package:store_app_version1/helper/api.dart';
import 'package:store_app_version1/models/product_model.dart';

class ProductCategory{
  Future<List<ProductModel>> getProductCategory({required String categoryName})async{
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productsList = [];
    for(int i = 0; i < data.length; i++){
      productsList.add(data[i]);
    }
    return productsList;
  }
}