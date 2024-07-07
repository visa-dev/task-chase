import 'package:flutter/material.dart';
import 'package:task_chase/features/authentication/screens/start_screen/widgets/header_content.dart';
import 'package:task_chase/features/authentication/screens/start_screen/widgets/already_account.dart';
import 'package:task_chase/features/authentication/screens/start_screen/widgets/start_button.dart';
import 'package:task_chase/features/authentication/screens/start_screen/widgets/subtitle.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContent(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal:KSizes.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: KSizes.spaceBtwSections),
                  SubTitle(),
                  SizedBox(height: KSizes.spaceBtwSections),
                  StartButton(),
                  SizedBox(height: KSizes.spaceBtwSections),
                  AlreadyAcoountHave()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
