import 'package:advance_flutter/core/theaming/colors.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.controller,
    this.keyboardType,
    required this.validator,
  });
  final String? hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: (value) {
          return validator!(value);
        },
        obscureText: obscureText ?? false,
        style: TextStyle(color: ColorsManger.lightBlack),
        decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          suffixIcon: suffixIcon,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          fillColor: ColorsManger.darkWhite,
          hintStyle: TextStyles.font14GreyMedium,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 1.4, color: ColorsManger.lightergrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 1.4, color: ColorsManger.mainBlue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 1.4, color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 1.4, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
