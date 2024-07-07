import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Badges",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  width: KSizes.xs,
                ),
                Text(
                  "(optional)",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const InputLabel(labelText: "Featured"),
            const InputField(),
            const InputLabel(labelText: "Issued"),
            const InputField(),
            const InputLabel(labelText: "ID"),
            const InputField(),
            const InputLabel(labelText: "License"),
            const InputField(),
            const InputLabel(labelText: "Partnerships"),
            const InputField(),
          ],
        ),
      ),
    );
  }
}
