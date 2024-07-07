import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:task_chase/utils/constants/colors.dart';

class HorizontalProgressBar extends StatefulWidget {
  const HorizontalProgressBar(
      {super.key, required this.currentStep, required this.totalStep});

  final int currentStep;
  final int totalStep;

  @override
  State<HorizontalProgressBar> createState() => _HorizontalProgressBarState();
}

@override
class _HorizontalProgressBarState extends State<HorizontalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: widget.totalStep,
      currentStep: widget.currentStep + 1,
      size: 5,
      padding: 0,
      selectedColor: KColors.primary,
      unselectedColor: KColors.darkGrey,
      roundedEdges: const Radius.circular(10),

    );
  }
}
