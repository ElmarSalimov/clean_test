import 'package:clean_test/features/domain/entities/user_entity.dart';

class UserState {}

class UsersInitial extends UserState {}

class UserLoading extends UserState {}

class UserError extends UserState {}

class UserLoaded extends UserState {
  final UserEntity user;
  UserLoaded(this.user);
}
