import 'package:flutter/material.dart';

import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            KHelperFunctions.isDark(context)
                ? (KImages.darkAppLogo)
                : (KImages.lightAppLogo),
          width: KHelperFunctions.screenWidth(context)/3.5,
          ),
          const SizedBox(
            height: KSizes.defaultSpace,
          ),
          Text(
            KTexts.loginScreenTitle,
            style: Theme.of(context).textTheme.headlineMedium,

          ),
        ],
      ),
    );
  }
}
