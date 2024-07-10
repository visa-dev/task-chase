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
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  final deviceStorage = GetStorage();
  final loading = false.obs;

  void setLoading(bool value) {
    loading.value = value;
  }

  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final country = "Select country".obs;
  final address = TextEditingController();
  final nic = TextEditingController();
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;

  void changeCountry(String value) {
    print('Selected country: $value');
    country.value = value;
    print('Selected country: $country');

  }

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

  @override
  void onClose() {
    // Dispose of all TextEditingController instances
    email.dispose();
    firstName.dispose();
    lastName.dispose();
    userName.dispose();
    password.dispose();
    address.dispose();
    nic.dispose();

    super.onClose();
  }

  // Clear form inputs
  void clearInputs() {
    email.clear();
    firstName.clear();
    lastName.clear();
    userName.clear();
    password.clear();
    address.clear();
    nic.clear();
  }

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
            "In order to create an account, you must read and accept the Privacy Policy & Terms of Use");
        return;
      } else {
        deviceStorage.writeIfNull("privacyPolicyAgreement", true);
      }

      setLoading(true); // Start loading

      // Send request to API for user signup
      await ClientRequest.sendRequest(
          path: "api/users/auth/signup",
          onResponse: signupSuccess,
          onError: signupFailed,
          body: userdata,
          timeOut: 10);

    } catch (e) {
      setLoading(false);
      KSnackBar.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }

  void signupSuccess(dynamic apiResponse) {
    clearInputs();
    setLoading(false);
    QuickAlert.show(
        context: Get.context!,
        type: QuickAlertType.success,
        title: apiResponse.title,
        text: apiResponse.message
        
    );
  }

  void signupFailed(Exception e) {
    setLoading(false);
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
    } else {
      QuickAlert.show(
          context: Get.context!,
          type: QuickAlertType.error,
          title: "Signup Failed",
          text: e.toString());
    }
  }
}
