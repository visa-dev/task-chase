import 'package:get/get.dart';
import 'package:task_chase/utils/network/network_management.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
