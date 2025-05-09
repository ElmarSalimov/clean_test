import 'package:clean_test/features/data/repository/user_repo_impl.dart';
import 'package:clean_test/features/domain/repository/user_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:clean_test/features/data/datasource/user_remote.dart';
import 'package:clean_test/features/domain/usecases/get_user.dart';
import 'package:clean_test/features/presentation/bloc/user_bloc.dart';

final sl = GetIt.instance;

void init() {
  // Data source
  sl.registerLazySingleton<UsersRemoteDataSource>(
    () => UsersRemoteDataSourceImpl(),
  );

  // Repository
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(sl()));

  // Use cases
  sl.registerLazySingleton(() => GetUsersUseCase(sl()));

  // Bloc
  sl.registerFactory(() => UsersBloc(sl()));
}
