import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/searchbar.dart';
import 'package:task_chase/features/user/screens/home/project_card.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDark(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: dark ? KColors.white : KColors.dark),
        title: Center(
        child:   SvgPicture.asset(
          KHelperFunctions.isDark(context)
              ? (KImages.darkAppLogo)
              : (KImages.lightAppLogo),
          width: KHelperFunctions.screenWidth(context)/3.5,
        ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomSearchBar(searchAreaText: KTexts.clientSearchText),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: KSizes.defaultSpace,
                vertical: KSizes.defaultSpace,
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 25,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: KSizes.md,
                  crossAxisSpacing: KSizes.md,
                ),
                itemBuilder: (_, index) => const ProjectCard(),// change project card and job card using client and freelancer
              ),
            ),
          ],
        ),
      ),
    );
  }
}
