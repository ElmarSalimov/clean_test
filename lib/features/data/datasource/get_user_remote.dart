import 'package:clean_test/features/data/models/user_model.dart';

abstract class GetUserRemoteDatasource {
  Future<UserModel> getUser(int id);
}

class GetUserRemoteDatasourceImpl extends GetUserRemoteDatasource {
  @override
  Future<UserModel> getUser(int id) async {
    await Future.delayed(Duration(seconds: 3));
    switch (id) {
      case 1:
        return UserModel(
          firstName: "Elmar",
          lastName: "Salimov",
          age: 20,
          id: 1,
        );
      case 2:
        return UserModel(
          firstName: "Aisha",
          lastName: "Rahimova",
          age: 25,
          id: 2,
        );
      default:
        return UserModel(
          firstName: "Unknown",
          lastName: "User",
          age: 0,
          id: id,
        );
    }
  }
}
