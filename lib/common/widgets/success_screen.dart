import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.subtitle,
    required this.onPressed,
    required this.title,
  });

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: KSizes.appBarHeight * 3, horizontal: KSizes.appBarHeight),
        child: Content(
            image: image,
            title: title,
            subtitle: subtitle,
            onPressed: onPressed),
      )),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding:const EdgeInsetsDirectional.all(KSizes.paddingSuccessScreenImage),
        decoration: BoxDecoration(
          color: KColors.successScreenImagePadding,
          borderRadius:
              BorderRadius.circular(25), // Set your desired corner radius
        ),
        child: Image(
          width: KHelperFunctions.screenWidth(context)/4,
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(height: KSizes.spaceBtwSections),
      Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      const SizedBox(height: KSizes.spaceBtwItems),
      Text(subtitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center),
      const SizedBox(height: KSizes.spaceBtwSections),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: const Text(KTexts.tContinue),
        ),
      )
    ]);
  }
}
