import 'package:clean_test/errors/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call({Params params});
}
