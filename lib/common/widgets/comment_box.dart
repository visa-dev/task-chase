import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart'; // Assuming THelperFunctions is defined here

class CommentBox extends StatelessWidget {
  const CommentBox({
    super.key,
    required this.userIcon,
  });

  final String userIcon;

  @override
  Widget build(BuildContext context) {
   // final bool isDarkMode = THelperFuncations.isDark(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: KSizes.defaultSpace),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Write a comment...',
              hintStyle: const TextStyle(color: KColors.hintTextColor),
              contentPadding: const EdgeInsets.all(15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RoundedContainer(
                    imageUrl: userIcon,
                    width: KSizes.iconLg,
                    fit: BoxFit.cover,
                    height: KSizes.iconLg,
                  )),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(
                  color: KHelperFunctions.isDark(context)
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
