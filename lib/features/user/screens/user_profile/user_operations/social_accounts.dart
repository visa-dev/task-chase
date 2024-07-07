import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class SocialAccount extends StatelessWidget {
  const SocialAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add social account",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const InputLabel(labelText: "Facebook"),
                const InputField(),
                const InputLabel(labelText: "Linkedin"),
                const InputField(),
                const InputLabel(labelText: "Instagram"),
                const InputField(),
                const InputLabel(labelText: "Website URL"),
                const InputField(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
