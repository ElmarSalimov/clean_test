import 'package:clean_test/errors/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class Usecase<T, Params> {
  Future<Either<Failure, T>> call(Params? params);
}

class NoParams {}

class GetUserParams {
  final int id;
  GetUserParams(this.id);
}
