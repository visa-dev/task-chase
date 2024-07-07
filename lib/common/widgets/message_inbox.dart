import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
    required this.userIcon,
    required this.userName,
    required this.message,
  });

  final String userIcon;
  final String userName;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: KSizes.defaultSpace / 2,
          horizontal: KSizes.defaultSpace / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            //onTap: () => Get.toNamed("/freelancer/client/profile"),
            child: RoundedContainer(
              imageUrl: userIcon,
              width: KSizes.iconLg * 1.5,
              height: KSizes.iconLg * 1.5,
              fit: BoxFit.cover,
              borderRadius: 100,
            ),
          ),
          const SizedBox(width: KSizes.defaultSpace),
          Expanded(
            child: GestureDetector(
              onTap: () => Get.toNamed("/messages/chat"),
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
                    message,
                    maxLines: 2, // Adjust maxLines as needed
                    overflow: TextOverflow.ellipsis, // Handle overflow
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
