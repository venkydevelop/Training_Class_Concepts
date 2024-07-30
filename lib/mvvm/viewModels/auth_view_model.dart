import 'package:get/get.dart';
import 'package:training_session/mvvm/api/api_result.dart';
import 'package:training_session/mvvm/extension/preference_manager.dart';
import 'package:training_session/mvvm/extension/snack_bar_extension.dart';
import 'package:training_session/mvvm/requestModels/auth_request.dart';
import 'package:training_session/mvvm/responseModels/auth_response.dart';
import 'package:training_session/mvvm/views/main_page.dart';
import 'package:training_session/mvvm/views/sign_in_page.dart';

import '../api/api_provider.dart';
import '../api/end_points.dart';

class AuthViewModel extends GetxController {
  final signInObserver = ApiResult<SignUpResponse>.init().obs;
  final signUpObserver = ApiResult<SignUpResponse>.init().obs;
  final userObserver = ApiResult<UsersResponse>.init().obs;
  final apiProvider = Get.put(ApiProvider());
  final preferenceManager = Get.put(PreferenceManager());

  // SignIn Request

  void signUpAction(SignUpRequest request) async {
    try {
      signUpObserver.value = ApiResult.loading();
      final response =
          await apiProvider.post(EndPoints.signUp, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = SignUpResponse.fromJson(body);
        print(responseData);
        if (responseData.status == 1) {
          await preferenceManager.setValue(
              preferenceManager.token, responseData.data?.token ?? '');
          Get.offAll(() => const MainPage());
        } else {
          signUpObserver.value = ApiResult.error(responseData.message ?? "");
          Get.showSnackBar(
              title: 'Failed', message: responseData.message ?? "");
        }
      } else {
        signUpObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      signUpObserver.value = ApiResult.error(e.toString());
    }
  }

  // Sign In

  void signInAction(SignInRequest request) async {
    try {
      signInObserver.value = ApiResult.loading();
      final response =
          await apiProvider.post(EndPoints.signIn, request.toJson());
      final body = response.body;
      print(body);
      if (response.isOk && body != null) {
        final responseData = SignUpResponse.fromJson(body);
        if (responseData.status == 1) {
          await preferenceManager.setValue(
              preferenceManager.token, responseData.data?.token ?? '');
          Get.offAll(() => const MainPage());
        } else {
          signInObserver.value = ApiResult.error(responseData.message ?? "");
          Get.showSnackBar(
              title: 'Failed', message: responseData.message ?? "");
        }
      } else {
        signInObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
        Get.showSnackBar(
            title: 'Failed', message: "${response.statusCode ?? 0}");
      }
    } catch (e) {
      signInObserver.value = ApiResult.error(e.toString());
    }
  }

  void fetchUsers() async {
    try {
      userObserver.value = ApiResult.loading();
      final response = await apiProvider.get(EndPoints.fetchUsers);
      final body = response.body;
      print(body);
      if (response.isOk && body != null) {
        final responseData = UsersResponse.fromJson(body);
        if (responseData.status == 1) {
          userObserver.value = ApiResult.success(responseData);
        } else {
          userObserver.value = ApiResult.error(responseData.message ?? "");
          Get.showSnackBar(
              title: 'Failed', message: responseData.message ?? "");
        }
      } else {
        userObserver.value = ApiResult.error(
            "something went wrong. ${response.statusCode ?? 0}");
        Get.showSnackBar(
            title: 'Failed', message: "${response.statusCode ?? 0}");
      }
    } catch (e) {
      userObserver.value = ApiResult.error(e.toString());
    }
  }

  void getMain() async {
    final token = await preferenceManager.getValue(preferenceManager.token);
    if (token != null && token.isNotEmpty) {
      Get.offAll(() => MainPage());
    } else {
      Get.offAll(() => const SignInPage());
    }
  }

  void logOut() async {
    await preferenceManager.removeToken();
    Get.offAll(() => const SignInPage());
  }
}
