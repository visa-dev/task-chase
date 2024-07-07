import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class BasicInformation extends StatelessWidget {
  const BasicInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = KHelperFunctions.screenWidth(context);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Basic information",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            Stack(
              children: [
                RoundedContainer(
                  imageUrl: KImages.clientCoverPhoto,
                  applyImageRadius: true,
                  borderRadius: 100,
                  fit: BoxFit.cover,
                  width: width / 4,
                  height: width / 4,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: KColors.darkGrey),
                    child: IconButton(
                      icon: const Icon(
                        Iconsax.camera_copy,
                        size: KSizes.md,
                      ),
                      onPressed: () => {},
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputLabel(labelText: "First Name"),
                      InputField(),
                    ],
                  ),
                ),
                SizedBox(
                  width: KSizes.sm,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputLabel(labelText: "Last Name"),
                      InputField(),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InputLabel(labelText: "Date Of birth"),
                const InputField(),
                const SizedBox(
                  height: KSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Text(
                      "RBN",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      width: KSizes.xs,
                    ),
                    Text(
                      "(optional)",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: KSizes.spaceBtwLabelAndInput,
                ),
                const InputField(),
                const InputLabel(labelText: "Location"),
                const InputField(),
                const InputLabel(labelText: "City"),
                const InputField(),
                const InputLabel(labelText: "Home sub / postal code"),
                const InputField(),
               const  SizedBox(height: 100,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
