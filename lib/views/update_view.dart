import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';

class UpdateView extends StatelessWidget {
  const UpdateView({super.key});
  static String id = 'update view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Update Product',
        ),
      ),
      body: const Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              text: 'Product Name',
            ),
            SizedBox(height: 8.0,),
            CustomTextFormField(
              text: 'Description',
            ),
            SizedBox(height: 8.0,),
            CustomTextFormField(
              text: 'Price',
            ),
            SizedBox(height: 8.0,),
            CustomTextFormField(
              text: 'image',
            ),
            SizedBox(height: 48.0,),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

