import 'package:clean_test/features/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({super.id, super.firstName, super.lastName, super.age});

  factory UserModel.fromJson(Map<String, dynamic> map) => UserModel(
    firstName: map['firstName'],
    lastName: map['lastName'],
    age: map['age'],
  );

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
    id: entity.id,
    firstName: entity.firstName,
    lastName: entity.lastName,
    age: entity.age,
  );
}
