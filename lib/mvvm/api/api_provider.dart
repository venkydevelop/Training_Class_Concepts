import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../extension/preference_manager.dart';

class ApiProvider<T> extends GetConnect {
  String apiKey = '123456';
  String apiLiveBaseUrl =
      'https://venkateshservices-a387e.el.r.appspot.com/user/';
  String token = '';

  @override
  void onInit() async {
    httpClient.baseUrl = apiLiveBaseUrl;
    httpClient.defaultContentType = 'application/json';
    httpClient.timeout = const Duration(seconds: 25);
    httpClient.addRequestModifier<T>((request) async {
      final preferenceManager = Get.find<PreferenceManager>();
      token = await preferenceManager.getValue(preferenceManager.token) ?? "";
      final modifiedRequest = request as Request<T>;
      modifiedRequest.headers['Authorization'] = token;
      modifiedRequest.headers['ApiKey'] = apiKey;
      return modifiedRequest;
    });
    super.onInit();
  }
}
