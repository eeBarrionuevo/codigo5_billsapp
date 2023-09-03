import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  Database? myDatabase;

  static final DBAdmin pepe = DBAdmin.mandarina();

  DBAdmin.mandarina();

  factory DBAdmin() {
    return pepe;
  }

  Future<Database?> checkDatabase() async {
    if (myDatabase == null) {
      myDatabase = await initDatabase();
    }
    return myDatabase;
  }

  Future<Database> initDatabase() async {
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

  getBills() async {
    Database? db = await checkDatabase();
    List data = await db!.query("BILL");
    print(data);
  }

  //Insertar Gasto

  insertBill() async {
    Database? db = await checkDatabase();
    int res = await db!.insert(
      "BILL",
      {
        "title": "Compras de mercado",
        "price": 2332.11,
        "datetime": "12/12/2023",
        "type": "Alimentos"
      },
    );
    print(res);
  }

  //Actualizar Gasto

  //Eliminar Gasto
}
