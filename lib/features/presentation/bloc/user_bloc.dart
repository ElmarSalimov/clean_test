import 'package:clean_test/features/domain/usecases/get_user.dart';
import 'package:clean_test/features/presentation/bloc/user_event.dart';
import 'package:clean_test/features/presentation/bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUseCase _getUsersUseCase;
  UsersBloc(this._getUsersUseCase) : super(UsersInitial()) {
    on<GetUser>(getUsers);
  }

  Future<void> getUsers(event, emit) async {
    emit(UserLoading());
    final result = await _getUsersUseCase.call();
    result.fold(
      (failure) => emit(UserError()),
      (user) => emit(UserLoaded(user)),
    );
  }
}
