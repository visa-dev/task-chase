import 'package:flutter/material.dart';
import 'package:task_chase/features/user/screens/home/job_card_2.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class OngoingTaskPage extends StatefulWidget {
  const OngoingTaskPage({super.key});

  @override
  State<OngoingTaskPage> createState() => _OngoingTaskPageState();
}

@override
class _OngoingTaskPageState extends State<OngoingTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: KSizes.defaultSpace,
      
        ),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: KSizes.md,
                crossAxisSpacing: KSizes.md,
                childAspectRatio: 2),
            itemBuilder: (_, index) => const JobCard2()),
    
    );
  }
}
