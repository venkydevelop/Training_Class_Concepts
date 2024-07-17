import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../model/product.dart';

class SqlService {
  SqlService._();
  static final SqlService db = SqlService._();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    var documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "ProductDB.db");
    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Product("
          "id INTEGER PRIMARY KEY AUTOINCREMENT,"
          "name TEXT,"
          "description TEXT,"
          "price INTEGER"
          ")");
    });
  }

  Future<ProductModel?> getProductByID(int id) async {
    final db = await database;
    var result = await db.query("Product", where: 'id = ?', whereArgs: [id]);
    return result.isNotEmpty ? ProductModel.fromJson(result.first) : null;
  }

  Future<List<ProductModel>> getAllProduct() async {
    final db = await database;
    var result = await db.query('Product');
    List<ProductModel> products = result.isNotEmpty
        ? result.map((prod) => ProductModel.fromJson(prod)).toList()
        : [];
    return products;
  }

  Future<int?> insert(ProductModel newProduct) async {
    final db = await database;
    var result = await db.insert("Product", newProduct.toJson());
    return result;
  }

  Future<int?> update(ProductModel product) async {
    final db = await database;
    var result = await db.update("Product", product.toJson(),
        where: 'id = ?', whereArgs: [product.id]);
    return result;
  }

  Future<int?> delete(int id) async {
    final db = await database;
    var result = await db.delete("Product", where: 'id = ?', whereArgs: [id]);
    return result;
  }
}
