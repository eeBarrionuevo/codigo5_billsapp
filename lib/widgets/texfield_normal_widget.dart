import 'package:flutter/material.dart';

class TextFieldNormalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Buscar por título",
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Colors.black.withOpacity(0.40),
        ),
        filled: true,
        fillColor: const Color(0xff101321).withOpacity(0.05),
        contentPadding: const EdgeInsets.all(12.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
