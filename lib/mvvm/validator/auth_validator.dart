import 'package:training_session/mvvm/requestModels/auth_request.dart';

class AuthValidator {
  String? signInValidator(SignInRequest request) {
    final RegExp emailValid = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (request.email.isEmpty) {
      return "Please enter email id";
    } else if (emailValid.hasMatch(request.email)) {
      return "Please enter Valid Email Id";
    } else if (request.password.isEmpty) {
      return "Please enter word";
    }
    return null;
  }

  String? signUpValidator(SignUpRequest request) {
    final RegExp emailValid = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (request.name.isEmpty) {
      return "please enter name";
    } else if (request.email.isEmpty) {
      return "Please enter email id";
    } else if (emailValid.hasMatch(request.email)) {
      return "Please enter Valid Email Id";
    } else if (request.password.isEmpty) {
      return "Please enter word";
    }
    return null;
  }
}
