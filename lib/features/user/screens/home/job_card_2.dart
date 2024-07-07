import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class JobCard2 extends StatelessWidget {
  const JobCard2({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDark(context);

    final screenWidth = KHelperFunctions.screenWidth(context);
    final screenHeight = KHelperFunctions.screenHeight(context);

    return Card(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: GestureDetector(
            onTap: () => {Get.toNamed('/post-view')},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RoundedContainer(
                    imageUrl: KImages.cardImg2,
                    applyImageRadius: true,
                    fit: BoxFit.cover,
                    width: screenWidth / 3.2,
                  ),
                  const SizedBox(
                    width: KSizes.md,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Posted yesterday",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Text(
                          "I need a skilled motor mechanic to perform maintenance ",
                          style: Theme.of(context).textTheme.titleMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: KSizes.sm,
                        ),
                        const Text("Budget : Rs 1000"),
                        const SizedBox(
                          height: KSizes.sm,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: 20,
                            width: 120,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side:
                                      const BorderSide(color: KColors.primary),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "View details",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(color: KColors.primary),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
