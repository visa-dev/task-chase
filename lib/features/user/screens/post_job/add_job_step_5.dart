import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AddJobStep5 extends StatelessWidget {
  const AddJobStep5({super.key});

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
            width: KHelperFunctions.screenWidth(context)/3.5,
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
                    "Photo and Description",
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
                 const  InputLabel(labelText: "Description",),
                  const InputField(
                    lines: 8,
                    hintText: "Write a detailed description of your job post",
                  ),
                  const SizedBox(
                    height: KSizes.spaceBtwInputFields,
                  ),
                  const InputLabel(labelText: "Photos",),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ],
              )),
        ),
      ),
    );
  }
}
