import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

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
                  "Skills",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const InputLabel(labelText: "What are you good at ?"),
                const InputField(),
                const InputLabel(labelText: "How do tou get around ?"),
                const InputField(),
                const InputLabel(
                    labelText: "What languages can you speak / write ?"),
                const InputField(),
                const InputLabel(
                    labelText: "What qualifications do you have ?"),
                const InputField(),
                const InputLabel(labelText: "What your working experience ?"),
                const InputField(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
