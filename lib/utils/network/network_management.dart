import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;

    if (_connectionStatus.value == ConnectivityResult.none) {
      if (kDebugMode) {
        print("No Connection");
      }
    }
  }
  Future<bool> isConnected() async {
    try{
      final result = await _connectivity.checkConnectivity();
      if(result==ConnectivityResult.none){
        return false;
      }else{
        return true;
      }
    }on PlatformException catch(_){
      return false;
    }
  }
}
