import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';

class DatabaseModel {
  final int? id;
  final String? name;
  final String? fathername;

  DatabaseModel({
    this.id,
    this.name,
    this.fathername,
  });

  factory DatabaseModel.fromMap(Map<String, dynamic>json)=>    //retrive data from list
      DatabaseModel(
        id: json["id"],
        name: json["name"],
        fathername: json["fathername"],
      );

  Map<String, dynamic> toMap() =>       //sending data to list
      {
        "id": id,
        "name": name,
        "fathername": fathername,

      };
}
