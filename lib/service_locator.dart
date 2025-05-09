import 'package:clean_test/features/data/datasource/get_user_remote.dart';
import 'package:clean_test/features/data/repository/get_user_repo_impl.dart';
import 'package:clean_test/features/domain/repository/get_user_repo.dart';
import 'package:clean_test/features/domain/usecases/get_user_usecase.dart';
import 'package:clean_test/features/presentation/bloc/user_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void init() {
  sl.registerSingleton<GetUserRemoteDatasource>(GetUserRemoteDatasourceImpl());

  sl.registerSingleton<GetUserRepository>(GetUserRepositoryImpl(sl()));

  sl.registerSingleton<GetUserUsecase>(GetUserUsecase(sl()));

  sl.registerSingleton<UserBloc>(UserBloc(sl()));
}