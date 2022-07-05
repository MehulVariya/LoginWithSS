import 'package:bloc/bloc.dart';
import 'package:loginnew/database/database.dart';

import '../database/user_model.dart';
import 'login_state.dart';

class UserCubit extends Cubit<UserCubitEvents> {
  UserCubit() : super(InitialState());

  DatabaseHelper? _databaseHelper;

  DatabaseHelper? getDB() {
    _databaseHelper ??= DatabaseHelper();

    return _databaseHelper;
  }

  void addData(User user) {
    getDB()?.createItem(user);
  }
}
