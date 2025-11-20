part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
   @Default(AsyncValue.initial()) AsyncValue<UserEntity> signUpState,
   @Default(AsyncValue.initial()) AsyncValue<UserEntity> signInState,
  }) = _AuthState;
}