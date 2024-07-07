import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: KHelperFunctions.screenWidth(context),
            height: KHelperFunctions.screenHeight(context) *
                0.5, // Adjust the height as needed
            child: KHelperFunctions.isDark(context)?(const Image(image: AssetImage(KImages.startScreenMainDark,),fit: BoxFit.cover,)):(const Image(image: AssetImage(KImages.startScreenMainLight),fit: BoxFit.cover))
          ),
          const SizedBox(height: KSizes.spaceBtwSections),
          Text(
            KTexts.startScreenTitle,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
