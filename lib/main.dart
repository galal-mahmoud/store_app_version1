import 'package:flutter/material.dart';
import 'package:store_app_version1/views/home_view.dart';

void main() {
  runApp(const StoreAppV1());
}


class StoreAppV1 extends StatelessWidget {
  const StoreAppV1({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id : (contex) => HomeView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
