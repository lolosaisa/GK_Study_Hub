import 'package:flutter/material.dart';
//this holds the different UI componenets

class MyTextField extends StatelessWidget {
  final Controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.Controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        controller: Controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.green.shade100,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade200),
        ),
      ),
    );
  }
}
