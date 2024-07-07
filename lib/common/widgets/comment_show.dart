import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/utils/constants/sizes.dart';


class CommentShow extends StatelessWidget {
  const CommentShow({
    super.key,
    required this.userIcon,
    required this.userName,
    required this.comment,
  });

  final String userIcon;
  final String userName;
  final String comment;

  @override
  Widget build(BuildContext context) {
   // final bool isDarkMode = THelperFuncations.isDark(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RoundedContainer(
            imageUrl: userIcon,
            width: KSizes.iconLg,
            height: KSizes.iconLg,
            fit: BoxFit.cover,
            borderRadius: 100, 
          ),
          const SizedBox(width: KSizes.defaultSpace),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  comment,
                  maxLines: 3, // Adjust maxLines as needed
                  overflow: TextOverflow.ellipsis, // Handle overflow
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
