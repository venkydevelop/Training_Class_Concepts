import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension GetSnackbarExtension on GetInterface {
  void showSnackBar({
    required String title,
    required String message,
    Duration? duration,
    Color? backgroundColor,
  }) {
    showSnackbar(
      GetSnackBar(
        titleText: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        messageText: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        duration: duration ?? const Duration(seconds: 2),
        backgroundColor: backgroundColor ?? Colors.lightBlueAccent,
      ),
    );
  }
}
