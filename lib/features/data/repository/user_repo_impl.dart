import 'package:clean_test/errors/failures.dart';
import 'package:clean_test/features/data/datasource/user_remote.dart';
import 'package:clean_test/features/domain/entities/user_entity.dart';
import 'package:clean_test/features/domain/repository/user_repo.dart';
import 'package:fpdart/fpdart.dart';

class UserRepositoryImpl implements UserRepository {
  final UsersRemoteDataSource _newsRemoteDataSource;
  UserRepositoryImpl(this._newsRemoteDataSource);

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    var result = await _newsRemoteDataSource.getUser();
    return right(result);
  }
}
