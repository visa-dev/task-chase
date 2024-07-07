import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/common/widgets/card_container.dart';

import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class JobCard1 extends StatelessWidget {
  const JobCard1({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDark(context);

    final screenWidth = KHelperFunctions.screenWidth(context);
    //final screenHeight = THelperFunctions.screenHeight(context);

    return Card(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
                    borderRadius: 15,
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
                        const Text("Bids : 0"),
                        const Row(
                          children: [
                            SizedBox(
                              child: Text("Proposals: 0"),
                            ),
                            Spacer(),
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 30,
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        size: 20,
                                      )),
                                  SizedBox(
                                      width: 50,
                                      child: Text(
                                        "Galle",
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
