import 'package:flutter/material.dart';
import 'package:task_chase/features/user/screens/home/job_card_2.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class CompleteTaskPage extends StatefulWidget {
  const CompleteTaskPage({super.key});

  @override
  State<CompleteTaskPage> createState() => _CompleteTaskPageState();
}

@override
class _CompleteTaskPageState extends State<CompleteTaskPage> {
  @override
  Widget build(BuildContext cotext) {
    return  Container(
        padding: const EdgeInsets.symmetric(
          horizontal: KSizes.defaultSpace,
      
        ),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 25,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: KSizes.md,
                crossAxisSpacing: KSizes.md,
                childAspectRatio:2),
            itemBuilder: (_, index) => const JobCard2()),
    
    );
  }
}
