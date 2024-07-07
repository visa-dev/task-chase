import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:task_chase/common/widgets/form_divider.dart';
import 'package:task_chase/common/widgets/social_buttons.dart';
import 'package:task_chase/screens/signup/signup_controller.dart';
import 'package:task_chase/screens/signup/widgets/header_content.dart';
import 'package:task_chase/screens/signup/widgets/user_data_form.dart';
import 'package:task_chase/features/authentication/screens/start_screen/widgets/already_account.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SafeArea(
            top: true,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(
                    top: KSizes.defaultSpace,
                    left: KSizes.defaultSpace,
                    bottom: KSizes.defaultSpace,
                    right: KSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderContent(),
                    SizedBox(
                      height: KSizes.md,
                    ),
                    SocialButtons(),
                    SizedBox(
                      height: KSizes.md,
                    ),
                    FormDivider(),
                    SignupUserDataForm(),
                    AlreadyAcoountHave()
                  ],
                ),
              ),
            ),
          ),
          CustomVisibility(
            key: controller.spinnerVisibilityKey,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xcc000000),
              child: Center(
                child: LoadingAnimationWidget.dotsTriangle(
                  color: const Color(0xfff0722e),
                  size: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomVisibility extends StatefulWidget {
  final Widget child;
  const CustomVisibility({super.key, required this.child});

  @override
  State<CustomVisibility> createState() => CustomVisibilityState();
}

class CustomVisibilityState extends State<CustomVisibility> {
  bool _isVisible = false;

  void toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: widget.child
    );
  }
}
