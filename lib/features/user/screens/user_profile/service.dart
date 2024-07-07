import 'package:flutter/material.dart';
import 'package:task_chase/features/user/screens/home/project_card.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

@override
class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 24,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: KSizes.md,
          crossAxisSpacing: KSizes.md,
        ),
        itemBuilder: (_, index) => const ProjectCard(),
      ),

    );
  }
}
