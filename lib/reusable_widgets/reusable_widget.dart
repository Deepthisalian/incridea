import 'package:flutter/material.dart';

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(
        color: Colors.white.withOpacity(0.9),
        fontFamily: "Ubuntu",
        fontSize: 20,
        fontWeight: FontWeight.w300),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(
          color: Colors.white.withOpacity(0.3),
          fontFamily: "Ubuntu",
          fontSize: 20,
          fontWeight: FontWeight.w300),
      filled: true,
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
        borderSide:
            BorderSide(color: Color.fromARGB(255, 236, 112, 120), width: 2.0),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: const Color.fromARGB(150, 6, 6, 6),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
          borderSide:
              BorderSide(color: Color.fromARGB(150, 51, 51, 51), width: 1.0)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}
