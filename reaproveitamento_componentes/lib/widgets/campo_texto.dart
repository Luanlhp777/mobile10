import 'package:flutter/material.dart';

Widget meuTextField(
  String texto,
  IconData icone,
  TextEditingController controller, {
  bool senha = false,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: TextField(
      controller: controller,
      obscureText: senha,
      decoration: InputDecoration(
        labelText: texto,
        prefixIcon: Icon(icone),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
