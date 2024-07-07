import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/common/widgets/card_container.dart';
import 'package:task_chase/features/user/screens/user_profile/about.dart';
import 'package:task_chase/features/user/screens/user_profile/complete_task.dart';
import 'package:task_chase/features/user/screens/user_profile/on_going_task.dart';
import 'package:task_chase/features/user/screens/user_profile/payment.dart';
import 'package:task_chase/features/user/screens/user_profile/post.dart';
import 'package:task_chase/features/user/screens/user_profile/service.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/device/device_utility.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = KHelperFunctions.isDark(context);

    final List<Tab> myTabs = <Tab>[
      const Tab(text: 'Service'),
      const Tab(text: 'Post'),
      const Tab(text: 'About'),
      const Tab(text: 'Ongoing Task'),
      const Tab(text: 'Complete Task'),
      const Tab(text: 'Payment'),
    ];

    return Scaffold(
      body: DefaultTabController(
        length: myTabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: isDarkMode ? Colors.black : Colors.white,
                expandedHeight: 310,
                floating: false,
                pinned: false,
                automaticallyImplyLeading: false,
                flexibleSpace: const FlexibleSpaceBar(
                  background: Header(),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: CustomSliverPersistentHeaderDelegate(
                  context,
                  TabBar(
                    tabs: myTabs,
                    isScrollable: true,
                    labelColor: Theme.of(context).primaryColor,
                    indicatorColor: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              Center(child: ServicePage()),
              Center(child: PostPage()),
              Center(child: AboutPage()),
              Center(child: OngoingTaskPage()),
              Center(child: CompleteTaskPage()),
              Center(child: PaymentPage()),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final BuildContext context;

  CustomSliverPersistentHeaderDelegate(this.context, this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: KHelperFunctions.isDark(context) ? Colors.black : Colors.white,
      child: SafeArea(
        top: true,
        child: tabBar,
      ),
    );
  }

  @override
  double get maxExtent =>
      tabBar.preferredSize.height + kDeviceUtility.getStatusBarHeight(context);

  @override
  double get minExtent =>
      tabBar.preferredSize.height + kDeviceUtility.getStatusBarHeight(context);

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  void _editProfile() {
    Get.toNamed('/edit-profile');
  }

  void _settings() {
    Get.toNamed('/settings');
  }

  @override
  Widget build(BuildContext context) {
    final double width = KHelperFunctions.screenWidth(context);
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 16.0 / 6.0,
            child: Image.asset(
              KImages.clientCoverPhoto,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Positioned(
          //     top: width / 20,
          //     right: width / 16,
          //     child: IconButton(
          //       icon: const Icon(
          //         Iconsax.setting_2_copy,
          //         size: kSizes.iconLg,
          //       ),
          //       onPressed: _settings,
          //     )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height:
                    kDeviceUtility.getScreenWidth(context) / 16.0 * 6.0 - 50,
              ),
              const RoundedContainer(
                imageUrl: KImages.cardImg2,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                applyImageRadius: true,
                borderRadius: 100,
              ),
              const SizedBox(height: KSizes.md),
              Text(
                "San Json",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: KSizes.xs),
              Text(
                "Motor Mechanic",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: KSizes.md),
              OutlinedButton.icon(
                icon: const Icon(Icons.edit),
                label: Text(
                  "Edit Your Profile",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                onPressed: _editProfile,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
