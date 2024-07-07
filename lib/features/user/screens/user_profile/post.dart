import 'package:flutter/material.dart';
import 'package:task_chase/features/user/screens/home/job_card_1.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

@override
class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.symmetric(
          horizontal: KSizes.defaultSpace,
         
        ),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 15,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: KSizes.md,
                crossAxisSpacing: KSizes.md,
                childAspectRatio: 2),
            itemBuilder: (_, index) => const JobCard1()),
   
    );
  }
}
