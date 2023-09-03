import 'dart:io';
import 'package:codigo5_billsapp/models/bill_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  Database? _myDatabase;

  static final DBAdmin _instance = DBAdmin._();
  DBAdmin._();
  factory DBAdmin() {
    return _instance;
  }

  Future<Database?> _checkDatabase() async {
    if (_myDatabase == null) {
      _myDatabase = await _initDatabase();
    }
    return _myDatabase;
  }

  Future<Database> _initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String pathDatabase = join(directory.path, "BillsDB.db");

    return await openDatabase(pathDatabase, version: 1,
        onCreate: (Database db, int version) {
      db.execute("""CREATE TABLE BILL(
              id INTEGER PRIMARY KEY AUTOINCREMENT, 
              title TEXT, 
              price REAL, 
              datetime TEXT, 
              type TEXT
            )""");
    });
  }

  //Obtener Gastos

  Future<List<Map>> getBills() async {
    Database? db = await _checkDatabase();
    List<Map> data = await db!.query("BILL");
    return data;
  }

  //Insertar Gasto

  Future<int> insertBill(BillModel data) async {
    Database? db = await _checkDatabase();
    int res = await db!.insert(
      "BILL",
      // data,
      // {
      //   "title": data.title,
      //   "price": data.price,
      //   "datetime": data.datetime,
      //   "type": data.type,
      // },
      data.convertirAMap(),
    );
    return res;
  }

  //Actualizar Gasto

  //Eliminar Gasto
}
