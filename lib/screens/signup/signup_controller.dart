import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_chase/screens/signup/signup_screen.dart';
import 'package:task_chase/utils/loading_snackbars/snackbar.dart';
import 'package:task_chase/utils/network/client_request.dart';
import 'package:task_chase/utils/network/network_management.dart';
import 'package:task_chase/utils/network/response/user_response.dart';
import 'package:quickalert/quickalert.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final deviceStorage = GetStorage();
  final loading = true.obs;

  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final country = "sri-lanka".obs;
  final address = TextEditingController();
  final nic = TextEditingController();
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;

  Map<String, dynamic> get userdata => {
        "email": email.text,
        "firstName": firstName.text,
        "lastName": lastName.text,
        "userName": userName.text,
        "password": password.text,
        "country": country.value,
        "address": address.text,
        "idDocument": {"doc": "nic", "number": nic.text},
        "location": {"lat": 7.253244853726137, "lng": 80.34613556195156},
      };

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  GlobalKey<CustomVisibilityState> spinnerVisibilityKey = GlobalKey<CustomVisibilityState>();

  Future<void> signup() async {
    try {
      final isConnected = await NetworkManager.instance.isConnected();
      if (kDebugMode) {}
      if (!isConnected) {
        KSnackBar.errorSnackBar(
            title: "Network Error",
            message: "Please check your internet connection");
        return;
      }

      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      if (!privacyPolicy.value) {
        KSnackBar.waringSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create account,You must have to read and accept the Privacy Policy & Terms of Use");
        return;
      } else {
        deviceStorage.writeIfNull("privacyPolicyAgreement", true);
      }

      // if (loading.value) {
      //   QuickAlert.show(
      //     context: Get.context!,
      //     type: QuickAlertType.loading,
      //     title: 'Loading',
      //     //text: 'Fetching your data',
      //   );
      // }

      spinnerVisibilityKey.currentState?.toggleVisibility();

      //send request to api for signup user
      await ClientRequest.sendRequest(
          path: "api/users/auth/signup",
          onResponse: signupSuccess,
          onError: signupFailed,
          body: userdata,
          timeOut: 10);

      // loading.value = false;
    } catch (e) {
      spinnerVisibilityKey.currentState?.toggleVisibility();
      KSnackBar.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }

  void signupSuccess(dynamic apiResponse) {
    spinnerVisibilityKey.currentState?.toggleVisibility();
    //var userModel = UserResponse.fromJson(apiResponse.data["user"]);
    QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.success,
        title: apiResponse.title,
        text: apiResponse.message);
  }

  void signupFailed(Exception e) {
    spinnerVisibilityKey.currentState?.toggleVisibility();
    // KSnackBar.errorSnackBar(title: e.title,message: e.message);
    loading.value = false;
    if (e is ValidationFailException) {
      QuickAlert.show(
          context: Get.context!,
          type: QuickAlertType.error,
          title: e.title,
          text: e.message);
    } else if (e is DuplicateFieldException) {
      QuickAlert.show(
          context: Get.context!,
          type: QuickAlertType.error,
          title: e.title,
          text: e.message);
    } else if (e is CustomException) {
      QuickAlert.show(
          context: Get.context!,
          type: QuickAlertType.error,
          title: e.title,
          text: e.message);
    }
  }
}
