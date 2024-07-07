import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/utils/constants/colors.dart';

class AlreadyAcoountHave extends StatelessWidget {
  const AlreadyAcoountHave({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an Account"),
            SizedBox(
              child: TextButton(
                onPressed: () => Get.toNamed('/login'),
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                      color: KColors.textButtonTextColor,
                      decoration: TextDecoration.underline),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

