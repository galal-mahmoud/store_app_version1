
import 'package:flutter/material.dart';
import 'package:store_app_version1/services/all_products_services.dart';
import '../models/product_model.dart';
import '../widgets/custom_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'home view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: FutureBuilder<List<ProductModel>>(
          future: AllProductsServices().getAllProducts(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              List<ProductModel> products = snapshot.data!;
              return Padding(
                padding: const EdgeInsetsDirectional.only(start: 8.0, end: 8.0, top: 50.0),
                child: GridView.builder(
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 60.0
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return CustomCard(
                      productModel: products[index],
                    );
                  },
                ),
              );
            }else{
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
      }
      ),
    );
  }
}
