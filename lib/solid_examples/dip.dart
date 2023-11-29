// ignore_for_file: public_member_api_docs, sort_constructors_first
// * dependency inversion principle
import 'package:flutter/foundation.dart';

class User {
  String name;
  User({
    required this.name,
  });
}

abstract class Database {
  void saveUser(User user);
}

class MySQLDatabase implements Database {
  @override
  void saveUser(User user) {
    debugPrint("saving ${user.name} to MySQL Database....");
  }
}

class PostgreSQLDatabase implements Database {
  @override
  void saveUser(User user) {
    debugPrint("saving ${user.name} to PostgreSQLDatabase....");
  }
}

class UserService {
  Database database;
  UserService({
    required this.database,
  });

  void saveUser(User user) {
    database.saveUser(user);
  }
}
