import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/common/widgets/form_divider.dart';
import 'package:task_chase/features/authentication/screens/login_screen/widgets/header_content.dart';
import 'package:task_chase/common/widgets/social_buttons.dart';
import 'package:task_chase/features/authentication/screens/login_screen/widgets/user_data_form.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark
            ? KColors.appBarBackgroundColorDarkMode
            : KColors.appBarBackgroundColorLightMode,
        iconTheme: IconThemeData(
          color: isDark
              ? Colors.white
              : Colors.black, // Adjust the color based on the theme mode
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 0,
              left: KSizes.defaultSpace,
              bottom: KSizes.defaultSpace,
              right: KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //logo and title
              const HeaderContent(),
              //user name password
              const LoginUserDataForm(),
              const FormDivider(),
              const SizedBox(height: KSizes.spaceBtwSections),
              //fb,google,apple
              const SocialButtons(),
              const SizedBox(
                height: KSizes.defaultSpace,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Don't have an Account ?")]),
              const SizedBox(
                height: KSizes.defaultSpace,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {Get.toNamed('/create-account')},
                  child: Text("Create Account",
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
