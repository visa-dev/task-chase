import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_chase/utils/loading_snackbars/snackbar.dart';
import 'package:task_chase/utils/network/network_management.dart';

class PostJobController extends GetxController {
  static PostJobController get instance => Get.find();

  //----2nd page
  //taskTypeDropDownMenu
  final taskTypeSelectedValue = "on-site".obs;
  //final isHovered = false.obs;


  //checkbox
  final isChecked = true.obs;

  //----3rd page
  final date = DateTime.now().obs;
  final radioButtonValue = "on-date".obs;
  final selectedTimeIndex = 0.obs;
}
