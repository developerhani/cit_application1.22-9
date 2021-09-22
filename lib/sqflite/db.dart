import 'dart:async';

import 'package:flutter_day_1/sqflite/model.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{

 Future<Database> initDB() async{
   final path=getDatabasesPath();       //settig a path for Database
   return openDatabase(               //this is actually a class
       join(path, "Mydatbase.db"),
   onCreate: (database, version)async{
         await database.execute("""
             CREATE TABLE student(
             id INTEGER PRIMARY KEY AUTOINCREMENT,
             title TEXT NOT NULL,
             subtitle TEXT NOT NULL
             )             
             """);
            },
   version: 1
   );   // database name
 }
 Future<bool>insertData(DatabaseModel databaseModel)async{
   final Database db=await initDB();
   db.insert("student", databaseModel.toMap());
   return true;
 }

 Future<List>showData()async{
   final Database Db=await initDB();
   final List<Map<String, Object?>> datas = await Db.query("student");
   return datas.map((e) => DatabaseModel.fromMap(e)).toList();
  }

  Future<void> update(DatabaseModel databaseModel, int id) async{
   final Database db = await initDB();
   await db.update("student", databaseModel.toMap(),  where:"id=?", whereArgs: [id]);
  }
  Future<void> delete(int id)async{
   final Database db = await initDB();
   await db.delete("student", where: "id=?",whereArgs: [id]);
  }

}