import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;

  const AppTextFiled(
      {Key? key,
      this.controller,
      this.hintText,
      this.prefixIcon,
      this.textInputAction,
      this.textInputType,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: textInputType ?? TextInputType.text,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText ?? "",
        prefixIcon: Icon(prefixIcon!),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
