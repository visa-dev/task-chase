import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

@override
class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext cotext) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "WebSite",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: KColors.darkGrey),
              ),
              const SizedBox(
                height: KSizes.spaceBtwLabelAndInput,
              ),
              Text(
                "http:/webisteURL.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              Text(
                "Location",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: KColors.darkGrey),
              ),
              const SizedBox(
                height: KSizes.spaceBtwLabelAndInput,
              ),
              Row(
                children: [
                  const Icon(Iconsax.location_copy),
                  const SizedBox(
                    width: KSizes.sm,
                  ),
                  Text(
                    "Galle",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              Text(
                "Socila Links",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: KColors.darkGrey),
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              const Row(
                children: [
                  ImageIcon(
                    AssetImage(KImages.aboutFb),
                    size: KSizes.iconMd,
                  ),
                  SizedBox(
                    width: KSizes.sm,
                  ),
                  Text("Facebook")
                ],
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              const Row(
                children: [
                  ImageIcon(
                    AssetImage(KImages.aboutBehance),
                    size: KSizes.iconMd,
                  ),
                  SizedBox(
                    width: KSizes.sm,
                  ),
                  Text("Bedance")
                ],
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              const Row(
                children: [
                  ImageIcon(
                    AssetImage(
                      KImages.aboutTwitter,
                    ),
                    size: KSizes.iconMd,
                  ),
                  SizedBox(
                    width: KSizes.sm,
                  ),
                  Text("X")
                ],
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              const Row(
                children: [
                  ImageIcon(
                    AssetImage(
                      KImages.aboutLinkedIn,
                    ),
                    size: KSizes.iconMd,
                  ),
                  SizedBox(
                    width: KSizes.sm,
                  ),
                  Text("Linkdin")
                ],
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              Text(
                "About me",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: KColors.darkGrey),
              ),
              const SizedBox(
                height: KSizes.spaceBtwLabelAndInput,
              ),
              Text(
                "Passionate car maintenance specialist dedicated to ensuring peak vehicle performance. With a keen eye for detail and a focus on user safety, I strive to provide thorough and reliable services that keep your car running smoothly. Let's keep your ride in top condition.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: KSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skils",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: KColors.darkGrey),
                    ),
                    const SizedBox(
                      height: KSizes.spaceBtwLabelAndInput,
                    ),
                    Text(
                      "Moter Michanic",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: KSizes.spaceBtwLabelAndInput,
                    ),
                    Text(
                      "English/Sinhala",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: KSizes.spaceBtwLabelAndInput,
                    ),
                    Text(
                      "Nvq 4",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: KSizes.spaceBtwLabelAndInput,
              ),
              Text(
                "Budgets",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: KColors.darkGrey),
              ),
              const Row(
                children: [
                  Image(
                    image: AssetImage(KImages.budget_1),
                    width: KSizes.iconLg,
                  ),
                  SizedBox(
                    width: KSizes.md,
                  ),
                  Image(
                    image: AssetImage(KImages.budget_2),
                  ),
                  SizedBox(
                    width: KSizes.md,
                  ),
                  Image(
                    image: AssetImage(KImages.budget_3),
                    width: KSizes.iconLg,
                  ),
                  SizedBox(
                    width: KSizes.md,
                  ),
                  Image(
                    image: AssetImage(KImages.budget_4),
                    width: KSizes.iconLg,
                  ),
                  SizedBox(
                    width: KSizes.md,
                  ),
                ],
              )
            ],
          ),
       
      ),
    );
  }
}
