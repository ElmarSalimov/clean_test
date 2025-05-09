import 'package:clean_test/errors/failures.dart';
import 'package:clean_test/features/domain/entities/user_entity.dart';
import 'package:clean_test/features/domain/repository/get_user_repo.dart';
import 'package:clean_test/usecase.dart';
import 'package:fpdart/fpdart.dart';

class GetUserUsecase extends Usecase<UserEntity, GetUserParams> {
  final GetUserRepository _getUserRepository;
  GetUserUsecase(this._getUserRepository);

  @override
  Future<Either<Failure, UserEntity>> call(GetUserParams? params) {
    return _getUserRepository.getUser(params!.id);
  }
}
