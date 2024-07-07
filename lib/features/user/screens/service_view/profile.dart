import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/common/widgets/comment_box.dart';
import 'package:task_chase/common/widgets/comment_show.dart';
import 'package:task_chase/packages/color_extension.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

class ServiceView extends StatefulWidget {
  const ServiceView({super.key});

  @override
  _ServiceViewState createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  void _showModalBottomSheet(BuildContext context, bool isDark) {
    showAdaptiveActionSheet(
      context: context,
      androidBorderRadius: 30,
      isDismissible: true,
      bottomSheetColor: Theme.of(context).colorScheme.bottomSheetScreenBgColor,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_chart_outlined),
                  SizedBox(
                    width: KSizes.sm,
                  ),
                  Text("Proposal")
                ]),
            onPressed: (context) {
              Get.toNamed('/proposal');
            }),
        BottomSheetAction(
            title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit),
                  SizedBox(
                    width: KSizes.md,
                  ),
                  Text("Edit")
                ]),
            onPressed: (context) {}),
        BottomSheetAction(
            title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.delete),
                  SizedBox(
                    width: KSizes.sm,
                  ),
                  Text("Delete")
                ]),
            onPressed: (context) {Get.toNamed('/delete');}),
      ],
      cancelAction: CancelAction(
          title: const Text(
        'Cancel',
        style: TextStyle(color: Colors.red),
      )), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDark(context);
    final width = KHelperFunctions.screenWidth(context);
    final height = KHelperFunctions.screenHeight(context);
    final bool isDark = KHelperFunctions.isDark(context);

    List<String> designSkills = [
      "Web Design (UX/UI)",
      "Mobile App Design (iOS/Android)",
      "Landing Page Design",
      "Responsive Web Design",
      "Web Application/SaaS Product Design",
      "Low and High-Fidelity Wireframes",
      "Creative & Innovative Design"
    ];

    final List<String> skills = [
      'Flutter',
      'Dart',
      'Python',
      'Java',
      'Node.js',
      'SQL',
      'Firebase',
      'Git',
      'UI/UX Design',
    ];

    final List<Map<String, String>> comments = [
      {
        "username": "Alice",
        "comment":
            "I really enjoyed reading this article. It was very insightful!",
        "userIconUrl": "assets/logos/card.jpg",
      },
      {
        "username": "Bob",
        "comment": "Great work! Looking forward to more content like this.",
        "userIconUrl": "assets/logos/card1.jpeg",
      },
      {
        "username": "Charlie",
        "comment": "This topic is important. Thanks for sharing your thoughts.",
        "userIconUrl": "assets/logos/card2.jpg",
      },
      {
        "username": "David",
        "comment":
            "Interesting perspective. I appreciate the effort put into this.",
        "userIconUrl": "assets/logos/card.jpg",
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                    items: const [
                      RoundedContainer(
                        imageUrl: KImages.cardImg1,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        applyImageRadius: false,
                      ),
                      RoundedContainer(
                        imageUrl: KImages.cardImg2,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        applyImageRadius: false,
                      ),
                      RoundedContainer(
                        imageUrl: KImages.cardImg3,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        applyImageRadius: false,
                      )
                    ],
                    options: CarouselOptions(
                        height: height / 4,
                        initialPage: 0,
                        viewportFraction: 1)),
                Positioned(
                    top: width / 12,
                    child: IconButton(
                      icon: const Icon(
                        Iconsax.arrow_left_2_copy,
                        size: KSizes.iconLg,
                      ),
                      onPressed: () => {Get.back()},
                    )),
                Positioned(
                    top: width / 20,
                    right: width / 16,
                    child: IconButton(
                      icon: const Icon(
                        Iconsax.setting_2_copy,
                        size: KSizes.iconLg,
                      ),
                      onPressed: () => {Get.toNamed('/settings')},
                    ))
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    children: [
                      RoundedContainer(
                        imageUrl: KImages.cardImg1,
                        applyImageRadius: true,
                        borderRadius: 100,
                        fit: BoxFit.cover,
                        width: width / 6,
                        height: width / 6,
                      ),
                      const SizedBox(width: KSizes.defaultSpace),
                      Expanded(
                        child: Text("Dart Designer",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ),
                      IconButton(
                        onPressed: () {
                          _showModalBottomSheet(context, isDark);
                        },
                        icon: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "posted : yesterday",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                      "Expert UI/UX Designer | Figma | Web & Mobile App Designer | Prototype",
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(
                    height: KSizes.defaultSpace,
                  ),
                  Text(
                    "Greetings! I'm Usama Aziz, an accomplished UI/UX designer boasting 5+ years of expertise in creating visually appealing and user-centric designs. Delving into the world of graphic design through the FIGMA & Adobe Creative Suite, I've evolved into a seasoned freelance professional specializing in UI/UX.",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: KSizes.defaultSpace,
                  ),
                  Text(
                    "Expertise Areas :",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: KSizes.md,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: designSkills
                        .map((item) => Row(
                              children: [
                                const Icon(
                                  Iconsax.arrow_right_2,
                                  size: KSizes.iconMd,
                                ),
                                const SizedBox(width: 5),
                                Text(item),
                              ],
                            ))
                        .toList(),
                  ),
                  const SizedBox(
                    height: KSizes.defaultSpace,
                  ),
                  Text(
                    "Skills :",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: KSizes.md,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: skills
                        .map((item) => Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                color: KColors.darkGrey,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                item,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ))
                        .toList(),
                  ),
                  const CommentBox(
                    userIcon: KImages.cardImg2,
                  ),
                  Wrap(
                    children: comments
                        .map((item) => CommentShow(
                              userName: item["username"]!,
                              userIcon: item["userIconUrl"]!,
                              comment: item["comment"]!,
                            ))
                        .toList(),
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
