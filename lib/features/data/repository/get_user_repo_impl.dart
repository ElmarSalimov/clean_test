import 'package:clean_test/errors/failures.dart';
import 'package:clean_test/features/data/datasource/get_user_remote.dart';
import 'package:clean_test/features/domain/entities/user_entity.dart';
import 'package:clean_test/features/domain/repository/get_user_repo.dart';
import 'package:fpdart/fpdart.dart';

class GetUserRepositoryImpl extends GetUserRepository {
  final GetUserRemoteDatasource _remote;
  GetUserRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, UserEntity>> getUser(int id) async {
    var result = await _remote.getUser(id);
    return right(result);
  }
}
