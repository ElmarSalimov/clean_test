import 'package:clean_test/features/data/models/user_model.dart';

abstract class UsersRemoteDataSource {
  Future<UserModel> getUser();
}

class UsersRemoteDataSourceImpl extends UsersRemoteDataSource {
  @override
  Future<UserModel> getUser() async {
    print("Before delay");
    await Future.delayed(Duration(seconds: 3));
    return UserModel(age: 18, lastName: "Salimov", firstName: "Elmar", id: 1);
  }
}
