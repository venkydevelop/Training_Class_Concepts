import 'package:get/get.dart';
import 'package:training_session/mvvm/api/api_result.dart';
import 'package:training_session/mvvm/requestModels/auth_request.dart';
import 'package:training_session/mvvm/responseModels/auth_response.dart';

import '../api/api_provider.dart';
import '../api/end_points.dart';

class AuthViewModel extends GetxController {
  final signInObserver = ApiResult<SignUpResponse>.init().obs;
  final apiProvider = Get.put(ApiProvider());

  // SignIn Request

  void signUpAction(SignUpRequest request) async {
    try {
      signInObserver.value = ApiResult.loading();
      final response =
          await apiProvider.post(EndPoints.signIn, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = SignUpResponse.fromJson(body);
        if (responseData.status == 1) {
        } else {
          signInObserver.value = ApiResult.error(responseData.message ?? "");
        }
      } else {
        signInObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      signInObserver.value = ApiResult.error(e.toString());
    }
  }
}
