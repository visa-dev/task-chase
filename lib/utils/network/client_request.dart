import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:task_chase/utils/network/response/common_api_response.dart';
import 'package:task_chase/utils/network/common/common_data.dart';

class ClientRequest {
  static Future<void> sendRequest(
      {required String path,
      required Function(dynamic obj) onResponse,
      required Function(Exception e) onError,
      required Map<String, dynamic>? body,
      int timeOut = 10}) async {
    var url = Uri.http(CommonData.apiUrl, path);
    final deviceStorage = GetStorage();

    Map<String, String> headers = {
      // "Authorization": Common.apiKey,
      "Token": deviceStorage.read("Token") ?? "",
      "Content-Type": "application/json"
      // "Id": user?.id.toString() ?? "",
    };

    try {
      var response = await http
          .post(url, headers: headers, body: jsonEncode(body))
          .timeout(Duration(seconds: timeOut));
      var resBody = jsonDecode(response.body);
      var token = response.headers["Token"];
      print(resBody);

      deviceStorage.writeIfNull("Token", token); //store token in local storage

      if (response.statusCode == 200) {
        //send response object to callback
        onResponse(CommonApiResponse.fromJson(resBody));
      } else if (response.statusCode == 401) {
        onError(AuthFailException(
            code: response.statusCode,
            title: resBody["title"] ?? "Authentication Failed",
            message: resBody["message"] ??
                "Authentication failed, you will have to login again.",
            icon: "warning"));
      } else if (response.statusCode == 400) {
        onError(ValidationFailException(
          code: response.statusCode,
          title: resBody["title"] ?? "Bad Request",
          message: resBody["message"] ??
              "There was an error with your request due to incorrect input, please review your submission and try again.",
          icon: "warning",
          validationError: resBody["validations"] ?? {} as Map<String, String>,
        ));
      } else if (response.statusCode == 409) {
        onError(DuplicateFieldException(
          code: response.statusCode,
          title: resBody["title"] ?? "Conflict",
          message:
              resBody["message"] ?? "Some fields you entered already exist.",
          icon: "warning",
          validationError: resBody["validations"] ?? {} as Map<String, String>,
        ));
      } else {
        onError(CustomException(
            code: response.statusCode,
            title: resBody["title"] ?? "Error",
            message: resBody["message"] ??
                "Something went wrong, please try again later.",
            icon: "error"));
      }
    } on SocketException catch (e) {
      onError(CustomException(
          code: 0,
          title: "Network Error",
          message:
              "Couldn't connect to the server, please check your internet connection and try again.",
          icon: "warning"));
    } on TimeoutException catch (e) {
      onError(CustomException(
          code: 0,
          title: "Timeout",
          message:
              "Request timeout, please check your internet connection and try again.",
          icon: "warning"));
    } on Exception catch (e) {
      onError(CustomException(
          code: 0,
          title: "Error",
          message: "Something went wrong, please try again later.",
          icon: "error"));
    }
  }

  Future<void> getRequest() async {}
}

class CustomException implements Exception {
  final int code;
  final String title, message, icon;
  CustomException(
      {required this.code,
      required this.title,
      required this.message,
      required this.icon});
}

class AuthFailException implements Exception {
  final int code;
  final String title, message, icon;
  AuthFailException(
      {required this.code,
      required this.title,
      required this.message,
      required this.icon});
}

class ValidationFailException implements Exception {
  final int code;
  final String title, message, icon;
  final dynamic validationError;
  ValidationFailException(
      {required this.code,
      required this.title,
      required this.message,
      required this.icon,
      required this.validationError});
}

class DuplicateFieldException implements Exception {
  final int code;
  final String title, message, icon;
  final dynamic validationError;
  DuplicateFieldException(
      {required this.code,
      required this.title,
      required this.message,
      required this.icon,
      required this.validationError});
}
