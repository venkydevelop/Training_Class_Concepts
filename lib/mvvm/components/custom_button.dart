import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;
  final Color textColor;
  final double width;
  final double height;
  final TextStyle? textStyle;
  final double borderRadius;

  const CustomButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.buttonColor = Colors.lightBlue,
      this.textColor = Colors.white,
      this.width = double.infinity,
      this.height = 44,
      this.borderRadius = 50,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: buttonColor,
            padding: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            )),
        child: Text(
          text,
          style: textStyle ??
              const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
