import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class Bid extends StatefulWidget {
  const Bid({super.key});

  @override
  State<Bid> createState() => _BidState();
}

@override
class _BidState extends State<Bid> {
  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: KSizes.md, horizontal: KSizes.defaultSpace),
          child: Row(
            children: [
              const RoundedContainer(
                imageUrl: KImages.cardImg2,
                width: 60,
                height: 60,
                applyImageRadius: true,
                borderRadius: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: KSizes.md,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "San Json",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    "Ui/UX Designer",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    children: [
                      Text(
                        "bid : Rs ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "5000",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Hire"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
