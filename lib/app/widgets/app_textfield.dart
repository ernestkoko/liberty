import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {this.hintText, this.labelText, this.textInputType,this.suffixIcon, Key? key})
      : super(key: key);
  final String? hintText;
  final String? labelText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        keyboardType: textInputType ?? TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: '  ${labelText ?? hintText}  ',
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: const BorderSide(
              color: Color(0xFF0184D6),
            ),
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: const BorderSide(
              color: Color(0xFFE0E4EB),
            ),
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
        ),
      ),
    );
  }
}
