import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

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
                  "About me",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const InputLabel(labelText: "Occupation"),
                const InputField(),
                const InputLabel(labelText: "Description"),
                const InputField(
                  lines: 8,
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
