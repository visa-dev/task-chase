import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/features/user/controllers/main/add_post/addpost_controller.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddJobStep2 extends StatelessWidget {
  const AddJobStep2({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    final controller = Get.put(PostJobController());

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
                    "Task type & Location ",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),
                  Text(
                    "Your task title, description, and address are crucial for attracting the right candidates. Make them clear and specific",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: KSizes.defaultSpace,
                  ),
                  const InputLabel(labelText: "Task Type"),
                  SizedBox(
                    width: double.infinity,
                    child: Obx(
                      () => DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(
                              value: "on-site", child: Text("On-site")),
                          DropdownMenuItem(
                              value: "remote", child: Text("Remote")),
                        ],
                        value: controller.taskTypeSelectedValue.value,
                        onChanged: (value) =>
                            controller.taskTypeSelectedValue(value),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const InputLabel(labelText: "City"),
                  Obx(() => InputField(
                        enabled:
                            controller.taskTypeSelectedValue.value != "remote",
                      )),
                  const InputLabel(labelText: "Address"),
                  Obx(() => InputField(
                        enabled:
                            controller.taskTypeSelectedValue.value != "remote",
                      )),
                  const SizedBox(
                    height: KSizes.defaultSpace,
                  ),
                  Obx(
                    () => Row(
                      children: [
                        const Text(
                          "is removal task",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Checkbox(
                            value: controller.isChecked.value,
                            onChanged: (value) =>
                                {controller.isChecked.value = value!}),
                      ],
                    ),
                  ),
                  const InputLabel(labelText: "City"),
                  Obx(() => InputField(
                        enabled: controller.isChecked.value,
                      )),
                  const InputLabel(labelText: "Address"),
                  Obx(() => InputField(
                        enabled: controller.isChecked.value,
                      )),
                  const SizedBox(
                    height: KSizes.spaceBtwSections,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
