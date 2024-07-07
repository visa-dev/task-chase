import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_chase/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:task_chase/data/repos/authentication.dart';
import 'package:task_chase/database_connection/mongodb.dart';

void main() async {
  //database connection
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await MongodbDatabase.connect().then((value)=>{Get.put(AuthenticationRepo())});

  //access local storage using geta_x pkg
  await GetStorage.init();

  //await splash until other items load

  runApp(
    DevicePreview(
      enabled: true,
      tools: DevicePreview.defaultTools, // Remove custom plugin if not used
      builder: (context) => const App(),
    ),
    //const App()
  );
}
