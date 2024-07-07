import 'package:flutter/material.dart';
import 'package:task_chase/features/user/screens/proposal/bid.dart';
import 'package:task_chase/features/user/screens/proposal/fix.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:slide_switcher/slide_switcher.dart';

class Proposal extends StatefulWidget {
  const Proposal({super.key});

  @override
  _ProposalState createState() => _ProposalState();
}

class _ProposalState extends State<Proposal> {
  int _selectedIndex = 0; // State variable to manage the selected tab

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    //final double width = THelperFuncations.screenWidth(context);

  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark
            ? KColors.appBarBackgroundColorDarkMode
            : KColors.appBarBackgroundColorLightMode,
        iconTheme: IconThemeData(
          color: isDark ? Colors.white : Colors.black,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
              child: Text(
                "Proposals",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(KSizes.md),
              child: Text(
                "I need a skilled motor mechanic to perform maintenance.",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Center(
              child: SlideSwitcher(
                onSelect: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                containerHeight: 30,
                containerWight: 350,
                containerColor: KColors.primary,
                slidersColors: [
                  isDark
                      ? const Color.fromARGB(255, 61, 59, 59)
                      : const Color.fromARGB(255, 232, 225, 225)
                ],
                children: [
                  Text(
                    'Fixed',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Bid',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _selectedIndex == 0
                ? const SingleChildScrollView(
                    child: Fixed(),
                  )
                : const SingleChildScrollView(
                    child: Bid(),
                  ),
          ],
        ),
      ),
    );
  }
}
