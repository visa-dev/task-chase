import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/sizes.dart';


class InputLabel extends StatelessWidget {
  const InputLabel({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: KSizes.md,
        ),
        Text(
          labelText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: KSizes.spaceBtwLabelAndInput,
        )
      ],
    );
  }
}
