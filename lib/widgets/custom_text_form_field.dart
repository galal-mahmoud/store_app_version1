import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.lightBlueAccent,
      decoration:  InputDecoration(
          hintText: text,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey
              )
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlueAccent,
              )
          )
      ),
    );
  }
}
