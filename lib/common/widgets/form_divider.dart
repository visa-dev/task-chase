import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: KHelperFunctions.isDark(context)
                ? (KColors.darkGrey)
                : (KColors.dark),
            thickness: 0.5,
            endIndent: 5,
            indent: 60,
          ),
        ),
        Text("Or", style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: KHelperFunctions.isDark(context)
               ? (KColors.darkGrey)
                : (KColors.dark),
            thickness: 0.5,
            endIndent: 60,
            indent: 5,
          ),
        ),
      ],
    );
  }
}