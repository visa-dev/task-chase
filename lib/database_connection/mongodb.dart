import 'package:flutter/foundation.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:task_chase/database_connection/constant_strings.dart';

class MongodbDatabase {

  static Db? db;

  static Future<void> connect() async {
    try {
      db = await Db.create(MONGODB_CONN_URL);
      await db!.open();
      if (kDebugMode) {
        print("Connected with mongodb successfully");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
