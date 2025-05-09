import 'package:clean_test/errors/failures.dart';
import 'package:clean_test/features/domain/entities/user_entity.dart';
import 'package:clean_test/features/domain/repository/user_repo.dart';
import 'package:clean_test/usecase.dart';
import 'package:fpdart/fpdart.dart';

class GetUsersUseCase implements UseCase<UserEntity, void> {
  final UserRepository _usersRepository;
  GetUsersUseCase(this._usersRepository);

  @override
  Future<Either<Failure, UserEntity>> call({void params}) {
    return _usersRepository.getUser();
  }
}
