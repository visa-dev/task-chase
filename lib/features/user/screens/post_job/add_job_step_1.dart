import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddJobStep1 extends StatelessWidget {
  const AddJobStep1({super.key});

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
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's Begin with a Compelling Title & Category",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),
                  Text(
                    "This helps your job post stand out to the right candidates. It’s the first thing they’ll see, so make it count!Let's Begin with a Compelling Title & Category",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: KSizes.defaultSpace,
                  ),
                  const InputLabel(
                      labelText: "Write a title for your job post"),
                  const InputField(),
                  const InputLabel(labelText: "What is the job category"),
                  const InputField(),
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
