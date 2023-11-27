import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;

  const CustomTextFormField({Key? key, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
