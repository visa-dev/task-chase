import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/texts.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            KTexts.startScreenSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}


