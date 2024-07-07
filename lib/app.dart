import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/bindings/general_binding.dart';
import 'package:task_chase/common/widgets/success_screen.dart';
import 'package:task_chase/features/authentication/screens/login_screen/login.dart';
import 'package:task_chase/features/authentication/screens/onboard_screen/onboarding.dart';
import 'package:task_chase/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:task_chase/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:task_chase/screens/signup/signup_screen.dart';
import 'package:task_chase/features/user/screens/post_view/profile.dart';
import 'package:task_chase/features/user/screens/proposal/proposal.dart';
import 'package:task_chase/features/user/screens/service_view/profile.dart';
import 'package:task_chase/features/user/screens/message/chat_box.dart';
import 'package:task_chase/features/user/screens/post_job/add_job.dart';
import 'package:task_chase/features/user/screens/post_project/add_project.dart';
import 'package:task_chase/features/user/screens/user_profile/user_operations/edit_profile.dart';
import 'package:task_chase/features/user/settings/delete.dart';
import 'package:task_chase/features/user/settings/settings.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:task_chase/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     initialBinding: GeneralBinding(),
      title: 'Task Chase',
      themeMode: ThemeMode.system,
      theme: kAppTheme.lightTheme,
      darkTheme: kAppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: KColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,

          ),
        ),
      ),

      //home: const Proposal(),
      //home: const Delete(),

      getPages: [
        GetPage(name: '/on-board', page: () => const OnBoardingScreen()),
        GetPage(name: '/login', page: () => const Login()),
        GetPage(name: '/create-account', page: () => const SignupScreen()),
        GetPage(name: '/forget-password', page: () => const ForgetPassword()),
        GetPage(name: '/reset-password', page: () => const ResetPassword()),

        GetPage(
            name: '/reset-password/success-screen',
            page: () => SuccessScreen(
                image: KImages.resetPasswordSuccess,
                subtitle: KTexts.resetPasswordSubTitle,
                onPressed: () => Get.toNamed('/login'),
                title: KTexts.resetPasswordSuccessSubTitle)),
        GetPage(
            name: '/send-email/success-screen',
            page: () => SuccessScreen(
                image: KImages.emailSendSuccess,
                subtitle: KTexts.emailSendSuccessSubTitle,
                onPressed: () => {
                      Get.toNamed('/reset-password')
                    }, // i need to code open gmail app
                title: KTexts.emailSendSuccessTitle)),
        GetPage(name: '/post-view', page: () => const PostView()),
        GetPage(name: '/service-view', page: () => const ServiceView()),

        GetPage(name: '/post-job', page: () => const AddJob()),
        GetPage(name: '/post-project', page: () => const AddProject()),

        GetPage(name: '/edit-profile', page: () => const EditProfile()),
        // GetPage(name: '/freelancer/edit-profile', page: () => const EditProfile()), need to develop

        GetPage(name: '/messages/chat', page: () => const ClientChat()),
        GetPage(name: '/settings', page: () => const Settings()),
        GetPage(name: '/delete', page: () => const DeleteAccount()),
        GetPage(name: '/proposal', page: () => const Proposal())
      ],
    );
  }
}
