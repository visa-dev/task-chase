import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/utils/constants/texts.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.toNamed('/on-board'),
            child: Text(KTexts.startScreenStartButtonText,
                style: Theme.of(context).textTheme.titleMedium),
          ),
        )
      ],
    );
  }
}

