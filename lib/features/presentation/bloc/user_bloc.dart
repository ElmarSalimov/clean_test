import 'package:clean_test/features/domain/usecases/get_user_usecase.dart';
import 'package:clean_test/features/presentation/bloc/user_event.dart';
import 'package:clean_test/features/presentation/bloc/user_state.dart';
import 'package:clean_test/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUsecase _getUserUsecase;

  UserBloc(this._getUserUsecase) : super(UserInitial()) {
    on<GetUser>(_getUser);
  }

  Future<void> _getUser(event, emit) async {
    emit(UserLoading());
    var result = await _getUserUsecase.call(GetUserParams(event.id));

    result.fold(
      (failure) => emit(UserError()),
      (user) => emit(UserLoaded(user)),
    );
  }
}
