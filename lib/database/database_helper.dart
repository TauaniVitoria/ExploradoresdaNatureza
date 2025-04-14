import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  // Nome do banco de dados
  final String _databaseName = "animais-flutter.db";

  // Versão do banco de dados
  final int _databaseVersion = 1;

  // Construtor privado
  DatabaseHelper._internal();

  // Singleton para garantir apenas uma instância do DatabaseHelper
  factory DatabaseHelper() {
    return _instance;
  }

  // Getter para o banco de dados
  Future<Database> get database async {
    if (_database != null) return _database!;

    // Se _database for null, inicialize-o
    _database = await _initDatabase();
    return _database!;
  }

  // Inicializa o banco de dados
  Future<Database> _initDatabase() async {
    // Obter o diretório de documentos
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);

    // Verificar se o banco de dados já existe
    bool dbExists = await File(path).exists();

    // Se o banco de dados não existir, copie-o da pasta de assets
    if (!dbExists) {
      // Copiar o banco de dados da pasta de assets
      ByteData data = await rootBundle.load(
        join('assets/database', _databaseName),
      );
      List<int> bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );

      // Escrever o banco de dados no diretório de documentos
      await File(path).writeAsBytes(bytes, flush: true);
      print("Banco de dados copiado para $path");
    } else {
      print("Banco de dados já existe em $path");
    }

    // Abrir o banco de dados
    return await openDatabase(path, version: _databaseVersion);
  }

  // Exemplo de método para executar uma consulta SQL
  Future<List<Map<String, dynamic>>> executarConsulta(
    String sql, [
    List<dynamic>? parameters,
  ]) async {
    Database db = await database;
    return await db.rawQuery(sql, parameters);
  }

  // Exemplo de método para executar uma atualização SQL
  Future<int> executarAtualizacao(
    String sql, [
    List<dynamic>? parameters,
  ]) async {
    Database db = await database;
    return await db.rawUpdate(sql, parameters);
  }

  // Exemplo de método para executar uma inserção SQL
  Future<int> executarInsercao(String sql, [List<dynamic>? parameters]) async {
    Database db = await database;
    return await db.rawInsert(sql, parameters);
  }

  // Exemplo de método para executar uma exclusão SQL
  Future<int> executarExclusao(String sql, [List<dynamic>? parameters]) async {
    Database db = await database;
    return await db.rawDelete(sql, parameters);
  }

  // Método para fechar o banco de dados
  Future close() async {
    if (_database != null) {
      await _database!.close();
      _database = null;
    }
  }
}
