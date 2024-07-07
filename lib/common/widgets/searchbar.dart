import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.searchAreaText,
  });

  final String searchAreaText;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
            vertical: KSizes.defaultSpace, horizontal: KSizes.defaultSpace),
        child: Form(
            child: SizedBox(
                width: double.infinity,
                child: InputField(
                  prefixIcon: Iconsax.search_normal_1_copy,
                  hintText: searchAreaText,
                ))));
  }
}
