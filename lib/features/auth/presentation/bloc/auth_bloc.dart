import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture/core/states/async_value.dart';
import 'package:clean_architecture/features/auth/domain/entity/user_entity.dart';
import 'package:clean_architecture/features/auth/domain/usecase/auth_sign_in.dart';
import 'package:clean_architecture/features/auth/domain/usecase/auth_sign_up.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthSignUp _authSignUp;
  final AuthSignIn _authSignIn;
  AuthBloc({required AuthSignUp authSignUp, required AuthSignIn authSignIn})
    : _authSignUp = authSignUp,
      _authSignIn = authSignIn,
      super(AuthState()) {
    on<AuthSignUpEvent>(_authSignUpEvent);
    on<AuthSignInEvent>(_authSignInEvent);
  }

  FutureOr<void> _authSignUpEvent(
    AuthSignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(signUpState: AsyncValue.loading()));
    final res = await _authSignUp(
      AuthSignUpParams(
        name: event.name,
        email: event.email,
        password: event.password,
      ),
    );
    res.fold(
      (failure) =>
          emit(state.copyWith(signUpState: AsyncValue.error(failure.msg))),
      (user) => emit(state.copyWith(signUpState: AsyncValue.data(user))),
    );
  }

  FutureOr<void> _authSignInEvent(
    AuthSignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(signInState: AsyncValue.loading()));
    final res = await _authSignIn(
      AuthSignInParams(email: event.email, password: event.password),
    );
    res.fold(
      (failure) =>
          emit(state.copyWith(signInState: AsyncValue.error(failure.msg))),
      (user) => emit(state.copyWith(signInState: AsyncValue.data(user))),
    );
  }
}
