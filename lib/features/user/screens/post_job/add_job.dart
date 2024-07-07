import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/horizontal_progress_bar.dart';
import 'package:task_chase/features/user/controllers/horizontal_progress_bar/horizontal_progress_bar_controller.dart';
import 'package:task_chase/features/user/screens/post_job/add_job_step_1.dart';
import 'package:task_chase/features/user/screens/post_job/add_job_step_2.dart';
import 'package:task_chase/features/user/screens/post_job/add_job_step_3.dart';
import 'package:task_chase/features/user/screens/post_job/add_job_step_4.dart';
import 'package:task_chase/features/user/screens/post_job/add_job_step_5.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class AddJob extends StatefulWidget {
  const AddJob({super.key});

  @override
  _AddJobState createState() => _AddJobState();
}

class _AddJobState extends State<AddJob> {
  // Declare your controller here
  late HorizontalProgressBarController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize your controller
    _controller = Get.put(HorizontalProgressBarController());
  }

  @override
  Widget build(BuildContext context) {
    final double height = KHelperFunctions.screenHeight(context);
    final bool isDark = KHelperFunctions.isDark(context);

    return Scaffold(
      body: PageView(
        controller: _controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          AddJobStep1(),
          AddJobStep2(),
          AddJobStep3(),
          AddJobStep4(),
          AddJobStep5(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: height / 6,
        color: isDark ? (Colors.black) : (Colors.white),
        child: Stack(
          children: [
            Positioned(
              top: height / 24,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  Obx(() {
                    return HorizontalProgressBar(
                      currentStep: _controller.currentStep.value,
                      totalStep: 5,
                    );
                  }),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Visibility(
                      visible: _controller.currentStep.value != 0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {
                          _controller.backStep(5);
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            "Back",
                            style: TextStyle(
                              color: KColors.primary,
                              fontSize: KSizes.md,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _controller.nextStep(5);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: KColors.dark,
                          fontSize: KSizes.md,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
