import 'package:clean_test/features/domain/entities/user_entity.dart';

class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final UserEntity user;
  UserLoaded(this.user);
}

class UserError extends UserState {}
