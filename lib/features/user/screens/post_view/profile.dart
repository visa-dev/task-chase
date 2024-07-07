import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/common/widgets/comment_box.dart';
import 'package:task_chase/common/widgets/comment_show.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

import 'package:task_chase/utils/theme/custom_themes/enums.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  // Function to show the bottom modal sheet
  void _showModalBottomSheet(BuildContext context, bool isDark) {}

  Future openDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            actions: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
            content: Container(
              constraints: BoxConstraints(
                  maxHeight: KHelperFunctions.screenHeight(context) /
                      4), // Set max height
              child: Scrollbar(
                thumbVisibility: true, // Ensure the scrollbar thumb is visible
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      20, // Number of times to repeat the text
                      (index) => const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Rs. 1400.00 by Emma Kate 4.7 ★",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 32, horizontal: 60),
          ));

  @override
  Widget build(BuildContext context) {
    final width = KHelperFunctions.screenWidth(context);
    final height = KHelperFunctions.screenHeight(context);
    final bool isDark = KHelperFunctions.isDark(context);

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
                    ),
                  ],
                  options: CarouselOptions(
                    height: height / 4,
                    initialPage: 0,
                    viewportFraction: 1,
                  ),
                ),
                Positioned(
                  top: width / 12,
                  child: IconButton(
                    icon: const Icon(
                      Iconsax.arrow_left_2_copy,
                      size: KSizes.iconLg,
                    ),
                    onPressed: () => {Get.back()},
                  ),
                ),
                Positioned(
                  top: width / 20,
                  right: width / 16,
                  child: IconButton(
                    icon: const Icon(
                      Iconsax.setting_2_copy,
                      size: KSizes.iconLg,
                    ),
                    onPressed: () => {Get.toNamed('/settings')},
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                    child: Text(
                      "Dart Designer",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
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
                    "need a ui/ux designer to do some mobile app design and website",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: KSizes.defaultSpace),
                  Text(
                    "I need a skilled web developer to design and build websites. This includes creating responsive designs, developing user-friendly interfaces, ensuring seamless functionality, and optimizing site performance. The ideal candidate should have experience with both front-end and back-end development, be proficient in HTML, CSS, JavaScript, and have a strong understanding of modern web development frameworks. Additionally, familiarity with SEO best practices, website security, and database management is highly desirable.",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: KSizes.defaultSpace),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: KSizes.xs),
                      Text(
                        "Budget : Rs. 100000.00",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: KSizes.sm,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Iconsax.location_copy,
                            size: KSizes.iconSm,
                          ),
                          SizedBox(width: KSizes.sm),
                          Text("Galle"),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Best bid Rs. 1400 by Emma Kate 4.7"),
                          SizedBox(width: KSizes.sm),
                          Icon(Icons.star),
                          SizedBox(width: KSizes.sm),
                        ],
                      ),
                      const SizedBox(
                        height: KSizes.sm,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: KColors.primary,
                              ),
                              onPressed: () => {openDialog(context)},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                child: Text(
                                  "Other bids",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: KSizes.md),
                  Text(
                    "Add Your Bid",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: KSizes.spaceBtwLabelAndInput),
                  Row(
                    children: [
                      const Expanded(child: InputField()),
                      const SizedBox(width: KSizes.md),
                      ElevatedButton(
                        onPressed: () => {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Bid",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: KSizes.spaceBtwInputFields),
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
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
        width: double.infinity,
        child: ElevatedButton(
          child: const Text("Apply Now"),
          onPressed: () => {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
