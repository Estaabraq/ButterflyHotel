import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sss/pages/Database/state.dart';

import '../../component.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() :super(AppInitialState());
  late Database database;
bool obscure = true ;
  IconData  ic = Icons.remove_red_eye;
  static AppCubit get(context) => BlocProvider.of(context);

  void createDatabase() {
    openDatabase(
      'Hotel.db',
      version: 1,
      onCreate: (database, version) {
        print('database created');
        database.execute(
            'CREATE TABLE Hotels (id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('Error When Creating Table ${error.toString()}');
        });
      },
      onOpen: (database) {
        getDataFromDatabase(database);
        print('database opened');
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertToDatabase({
    required String first,
    required String email,
    required String password,

  }) async {
    database.transaction((txn) async {
      txn
          .rawInsert(
        'INSERT INTO Hotels(name, email, password) VALUES("$first",  "$email", "$password" )',
      )
          .then((value) {
        print('$value inserted successfully');
        emit(AppInsertDatabaseState());
        getDataFromDatabase(database);
      }).catchError((error) {
        print('Error When Inserting New Record ${error.toString()}');
      });

      return null;
    });
  }

  void getDataFromDatabase(database) {
    database.rawQuery('SELECT * FROM Hotels').then((value) {
      login_screen = value;
      print(login_screen);
      print(login_screen.length);
      emit(AppGetDatabaseState());
    });
  }

  void deleteData({
    required int id,
  }) async
  {
    database.rawDelete('DELETE FROM Hotels WHERE id = ?', [id])
        .then((value) {
      getDataFromDatabase(database);
      emit(AppDeleteDatabaseState());
    });
  }
  void get_obscure()
  {
    obscure=!obscure ;
    obscure? ic = Icons.visibility : ic = Icons.visibility_off;
    emit(get_obscure_data()) ;
  }
}