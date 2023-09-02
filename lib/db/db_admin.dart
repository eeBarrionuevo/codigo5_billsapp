import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String pathDatabase = join(directory.path, "BillsDB.db");
    openDatabase(
      pathDatabase,
    );
  }
}
