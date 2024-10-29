import 'package:advance_flutter/core/theaming/colors.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          backgroundColor: WidgetStateProperty.all(ColorsManger.mainBlue),
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52))),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
