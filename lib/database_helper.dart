import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'data.dart';

class DatabaseHelper{
  static DatabaseHelper _databaseHelper;
  static Database _database;

  String dataTable = 'data_table';
  String colId = 'id';
  String colTitle = 'title';
  String colDescription = 'description';
  
  DatabaseHelper._createInstance();
  
  factory DatabaseHelper(){
    if(_databaseHelper == null){
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }
  Future<Database>get database async
  {
    if(_database == null)
      {
        _database = await initializeDatabase();
      }
    return _database;
    
  }
  
  Future<Database> initializeDatabase()async
  {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'data.db';
    var notesDatabase = await openDatabase(path, version: 1, onCreate: _createDb);
    return notesDatabase;
  }
  void _createDb(Database database, int newVersion) async
  {
    await database.execute('CREATE TABLE $dataTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT,'
           '$colDescription TEXT)');
  }

  Future<List<Map<String, dynamic>>>getNotesMapList() async{
    Database db = await this.database;
  }
  // Insert Operation: Insert a Note object to database
  Future<int> insertNote(Data note) async {
    Database db = await this.database;
    var result = await db.insert(dataTable, note.toMap());
    return result;
  }
  // Update Operation: Update a Note object and save it to database
  Future<int> updateNote(Data note) async {
    var db = await this.database;
    var result = await db.update(dataTable, note.toMap(), where: '$colId = ?', whereArgs: [note.id]);
    return result;
  }
  // Delete Operation: Delete a Note object from database
  Future<int> deleteNote(int id) async {
    var db = await this.database;
    int result = await db.rawDelete('DELETE FROM $dataTable WHERE $colId = $id');
    return result;
  }
  // Get number of Note objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x = await db.rawQuery('SELECT COUNT (*) from $dataTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }
  Future<List<Data>> getNoteList() async {

    var noteMapList = await getNotesMapList(); // Get 'Map List' from database
    int count = noteMapList.length;         // Count the number of map entries in db table

    List<Data> noteList = List<Data>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      noteList.add(Data.fromMapObject(noteMapList[i]));
    }

    return noteList;
  }

}