import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String lblTxt;
  final String hintTxt;
  final TextEditingController? controller;
  final bool isPassword;
  final int? textLength;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField(
      {super.key,
      required this.lblTxt,
      required this.hintTxt,
      this.prefixIcon,
      this.suffixIcon,
      this.controller,
      this.textLength,
      this.keyboardType = TextInputType.text,
      this.isPassword = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        obscureText: widget.isPassword && !_isPasswordVisible,
        controller: widget.controller,
        cursorColor: Colors.black,
        textInputAction: TextInputAction.next,
        maxLength: widget.textLength,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          counterText: '',
          label: Text(
            widget.lblTxt,
            style: const TextStyle(
                color: Color(0xFF263238),
                fontWeight: FontWeight.w400,
                fontSize: 16),
          ),
          hintStyle:
              TextStyle(fontSize: 16, color: Colors.grey.withOpacity(0.4)),
          hintText: widget.hintTxt,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.12),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: _togglePasswordVisibility,
                  child: _isPasswordVisible
                      ? const Icon(Icons.visibility, color: Color(0xFFA7A9B7))
                      : const Icon(Icons.visibility_off,
                          color: Color(0xFFA7A9B7)),
                )
              : widget.suffixIcon,
        ),
      ),
    );
  }
}
