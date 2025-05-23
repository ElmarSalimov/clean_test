import 'package:clean_test/errors/failures.dart';
import 'package:clean_test/features/domain/entities/user_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser();
}
