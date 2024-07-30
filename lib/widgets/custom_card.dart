import 'package:flutter/material.dart';
import 'package:store_app_version1/models/product_model.dart';
import 'package:store_app_version1/views/update_view.dart';

import '../helper/helper_methods.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key, required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateView.id);
      },
        child: Stack(
                   clipBehavior: Clip.none,
                   children: [
                     Container(
                       decoration: BoxDecoration(boxShadow: [
                         BoxShadow(
                             blurRadius: 40,
                             color: Colors.grey.withOpacity(0.2),
                             spreadRadius: 4,
                             offset: const Offset(3, 3))
                       ]),
                       child: Card(
                         color: Colors.white,
                         child: Padding(
                             padding: const EdgeInsetsDirectional.only(
                                 bottom: 16.0, start: 8.0, end: 8.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   productModel.title.substring(0, 6),
                                   style:
                                   buildTextStyle(fontSize: 14.0, ),
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text(
                                       '\$ ${productModel.price}',
                                       style: buildTextStyle(fontSize: 12.0, color: Colors.black),
                                     ),
                                     const Icon(
                                       Icons.favorite,
                                       color: Colors.red,
                                     ),
                                   ],
                                 ),
                               ],
                             )),
                       ),

                     ),
                     Positioned(
                       bottom: 70.0,
                       right: 10,
                       child: Image.network(
                         productModel.image,
                         height: 120,
                         width: 80,
                       ),)
                   ],
    ));
  }
}
