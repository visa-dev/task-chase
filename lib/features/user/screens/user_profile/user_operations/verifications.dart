import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class Verifications extends StatelessWidget {
  const Verifications({super.key});

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
                  "Verifications",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: KSizes.xs,
                ),
                const Text(
                    "Build trust with your network by verifying your social account"),
                const InputLabel(labelText: "Email"),
                const InputField(
                  suffixIcon: Icons.verified,
                  suffixIconColor: Colors.green,
                ),
                const InputLabel(labelText: "Phone Number"),
                const InputField(
                  suffixIcon: Icons.verified,
                  suffixIconColor: Colors.green,
                ),
                const InputLabel(labelText: "ID / Driving license"),
                const InputField(
                  suffixIcon: Icons.verified,
                  suffixIconColor: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
