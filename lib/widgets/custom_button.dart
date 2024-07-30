import 'package:flutter/material.dart';

import '../helper/helper_methods.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(child: Text(
        'Update',
        style: buildTextStyle(
            color: Colors.white,
            fontSize: 16.0
        ),
      )),
    ));
  }
}
