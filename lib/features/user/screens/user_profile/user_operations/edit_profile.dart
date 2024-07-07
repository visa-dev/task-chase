import 'package:flutter/material.dart';
import 'package:task_chase/features/user/screens/user_profile/user_operations/about_me.dart';
import 'package:task_chase/features/user/screens/user_profile/user_operations/badges.dart';
import 'package:task_chase/features/user/screens/user_profile/user_operations/basic_informations.dart';
import 'package:task_chase/features/user/screens/user_profile/user_operations/skills.dart';
import 'package:task_chase/features/user/screens/user_profile/user_operations/social_accounts.dart';
import 'package:task_chase/features/user/screens/user_profile/user_operations/verifications.dart';
import 'package:task_chase/packages/color_extension.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      const Tab(text: 'Basic information'),
      const Tab(text: 'Badges'),
      const Tab(text: 'Skills'),
      const Tab(text: 'Verification'),
      const Tab(text: 'Social account'),
      const Tab(text: 'About me'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.profileAppbarColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.appbarBackArrowColor,
          ),
          onPressed: () => {Navigator.pop(context)},
        ),
      ),
      body: DefaultTabController(
        length: myTabs.length,
        child: Column(
          children: [
            TabBar(
              labelColor: Theme.of(context).primaryColor,
              indicatorColor: Theme.of(context).primaryColor,
              tabs: myTabs,
              isScrollable: true,
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  BasicInformation(),
                  Badges(),
                  Skills(),
                  Verifications(),
                  SocialAccount(),
                  AboutMe(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
        width: double.infinity,
        child: ElevatedButton(
          child: const Text("Save"),
          onPressed: () => {},
        ),
      ),
    );
  }
}
