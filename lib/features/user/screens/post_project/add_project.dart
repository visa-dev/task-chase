import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddProject extends StatelessWidget {
  const AddProject({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create a new Project",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: KSizes.defaultSpace,
              ),
              const InputLabel(labelText: "Write a title for your project"),
              const InputField(),
              const InputLabel(labelText: "What is the job category"),
              const InputField(),
              const InputLabel(labelText: "Skills"),
              const InputField(),
              const InputLabel(labelText: "Description"),
              const InputField(
                lines: 5,
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  const Text(
                    "Photos",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: KSizes.sm,
                  ),
                  Text(
                    "(Optional)",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DottedBorder(
                      color: Colors.grey,
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(15),
                      child: Padding(
                        padding: const EdgeInsets.all(KSizes.defaultSpace),
                        child: IconButton(
                          icon: const ImageIcon(
                            AssetImage(KImages.addImg),
                            size: KSizes.iconLg,
                          ),
                          onPressed: () => {},
                        ),
                      )),
                  DottedBorder(
                      color: Colors.grey,
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(15),
                      child: Padding(
                        padding: const EdgeInsets.all(KSizes.defaultSpace),
                        child: IconButton(
                          icon: const ImageIcon(
                            AssetImage(KImages.addImg),
                            size: KSizes.iconLg,
                          ),
                          onPressed: () => {},
                        ),
                      )),
                  DottedBorder(
                      color: Colors.grey,
                      strokeWidth: 1,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(15),
                      child: Padding(
                        padding: const EdgeInsets.all(KSizes.defaultSpace),
                        child: IconButton(
                          icon: const ImageIcon(
                            AssetImage(KImages.addImg),
                            size: KSizes.iconLg,
                          ),
                          onPressed: () => {},
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: KSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    "Publish",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
