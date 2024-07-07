import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    final double width = KHelperFunctions.screenWidth(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark
            ? KColors.appBarBackgroundColorDarkMode
            : KColors.appBarBackgroundColorLightMode,
        iconTheme: IconThemeData(
          color: isDark
              ? Colors.white
              : Colors.black, // Adjust the color based on the theme mode
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Delete Account",
              style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(
            height: KSizes.defaultSpace,
          ),
          const Text(
              "please enter the verification code send to **********@gmail.com"),
          const SizedBox(
            height: KSizes.defaultSpace * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width / 7,
                child: TextFormField(),
              ),
              SizedBox(
                width: width / 7,
                child: TextFormField(),
              ),
              SizedBox(
                width: width / 7,
                child: TextFormField(),
              ),
              SizedBox(
                width: width / 7,
                child: TextFormField(),
              ),
            ],
          ),
          const SizedBox(
            height: KSizes.spaceBtwSections * 2,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: Text(
                "Delete Account",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onPressed: () {},
            ),
          )
        ]),
      ),
    );
  }
}
