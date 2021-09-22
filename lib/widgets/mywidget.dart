import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class  TextFormWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;
  // final TextEditingController controller;

  TextFormWidget(
  {
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    // required this.controller,
}
      );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 22, color : Colors.purple),
          ),
    );

  }
}
