import 'package:flutter/material.dart';

class FromFieldComponent extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final IconData? prefixIcon;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  const FromFieldComponent({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.textInputAction = TextInputAction.next,
    this.prefixIcon,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      textInputAction: textInputAction,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon, color: Colors.white),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.blue.withValues(alpha: 0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(16),
        ),
        suffixIcon:
            isPassword ? Icon(Icons.remove_red_eye, color: Colors.red) : null,
      ),
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      obscureText: isPassword,
    );
  }
}
