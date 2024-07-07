import 'package:get/get.dart';
import 'package:task_chase/features/user/screens/notification/notification.dart';
import 'package:task_chase/features/user/screens/user_profile/profile.dart';
import 'package:task_chase/features/user/screens/home/home.dart';
import 'package:task_chase/features/user/screens/message/message.dart';


class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const Notification(),
    const Message(),
    const Profile(),
  ]; 
}
