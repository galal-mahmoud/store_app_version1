import 'package:flutter/material.dart';

import '../helper/helper_methods.dart';

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
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
        itemBuilder: (context, index){
            return const CustomCard();
        },
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                      'product name',
                      style:
                          buildTextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'product description',
                          style: buildTextStyle(fontSize: 14.0),
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
          bottom: 20.0,
          right: 10.0,
          child: Image.network(
          'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          height: 120,
          width: 100,
        ),)
      ],
    );
  }
}
