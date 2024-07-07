import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:intl/intl.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/common/widgets/form_divider.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/features/user/controllers/main/add_post/addpost_controller.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddJobStep3 extends StatelessWidget {
  const AddJobStep3({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    final double width = KHelperFunctions.screenWidth(context);
    final controller = Get.put(PostJobController());

    Future<void> popupDatePicker() async {
      DateTime? pickDate = await showDatePicker(
        initialDate: DateTime.now(),
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)),
      );
      if (pickDate != null) {
        controller.date.value = pickDate;
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme:
            IconThemeData(color: isDark ? (KColors.white) : (KColors.dark)),
        title: Center(
          child: SvgPicture.asset(
            KHelperFunctions.isDark(context)
                ? (KImages.darkAppLogo)
                : (KImages.lightAppLogo),
            width: KHelperFunctions.screenWidth(context) / 3.5,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date & Time",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),
                  Text(
                    "Select a date and time option to ensure the task is completed when needed",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: KSizes.defaultSpace,
                  ),
                  Obx(
                    () => Column(
                      children: [
                        RadioListTile(
                          title: const Text('On date'),
                          value: 'on-date',
                          groupValue: controller.radioButtonValue.value,
                          onChanged: (value) {
                            controller.radioButtonValue.value = value!;
                          },
                        ),
                        RadioListTile(
                          title: const Text('Before date'),
                          value: 'before-date',
                          groupValue: controller.radioButtonValue.value,
                          onChanged: (value) {
                            controller.radioButtonValue.value = value!;
                          },
                        ),
                        RadioListTile(
                          title: const Text('Flexible date'),
                          value: 'flexible-date',
                          groupValue: controller.radioButtonValue.value,
                          onChanged: (value) {
                            controller.radioButtonValue.value = value!;
                          },
                        ),
                      ],
                    ),
                  ),
                  const InputLabel(
                    labelText: "Date",
                  ),
                  Obx(
                    () => InputField(
                        readOnly: true,
                        suffixIcon: Iconsax.calendar_1_copy,
                        enabled: controller.radioButtonValue.value ==
                            "flexible-date",
                        onClickSuffix: () => {popupDatePicker()},
                        hintText: DateFormat("yyyy-MMMM-dd")
                            .format(controller.date.value)),
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwSections,
                  ),
                  const InputLabel(
                    labelText: "Time",
                  ),
                  Obx(
                    () => Row(
                      children: [
                        Column(
                          children: [
                            RoundedContainer(
                              imageUrl: KImages.cardImg1,
                              width: width / 5,
                              height: width / 7,
                              applyImageRadius: true,
                              borderRadius: 10,
                              fit: BoxFit.cover,
                              onPress: () =>
                                  {controller.selectedTimeIndex.value = 0},
                              selected: controller.selectedTimeIndex.value == 0,
                            ),
                            SizedBox(height: KSizes.xs,),
                            const Text("Morning")
                          ],
                        ),
                        const SizedBox(
                          width: KSizes.sm,
                        ),
                        Column(
                          children: [
                            RoundedContainer(
                              imageUrl: KImages.cardImg1,
                              width: width / 5,
                              height: width / 7,
                              applyImageRadius: true,
                              borderRadius: 10,
                              fit: BoxFit.cover,
                              onPress: () =>
                                  {controller.selectedTimeIndex.value = 1},
                              selected: controller.selectedTimeIndex.value == 1,
                            ),
                            SizedBox(height: KSizes.xs,),
                            const Text("Midday")
                          ],
                        ),
                        const SizedBox(
                          width: KSizes.sm,
                        ),
                        Column(
                          children: [
                            RoundedContainer(
                              imageUrl: KImages.cardImg1,
                              width: width / 5,
                              height: width / 7,
                              applyImageRadius: true,
                              borderRadius: 10,
                              fit: BoxFit.cover,
                              onPress: () =>
                                  {controller.selectedTimeIndex.value = 2},
                              selected: controller.selectedTimeIndex.value == 2,
                            ),
                            SizedBox(height: KSizes.xs,),
                            const Text("Afternoon")
                          ],
                        ),
                        const SizedBox(
                          width: KSizes.sm,
                        ),
                        Column(
                          children: [
                            RoundedContainer(
                              imageUrl: KImages.cardImg1,
                              width: width / 5,
                              height: width / 7,
                              applyImageRadius: true,
                              borderRadius: 10,
                              fit: BoxFit.cover,
                              onPress: () =>
                                  {controller.selectedTimeIndex.value = 3},
                              selected: controller.selectedTimeIndex.value == 3,
                            ),
                            const SizedBox(height: KSizes.xs,),
                            const Text("Evening")
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
