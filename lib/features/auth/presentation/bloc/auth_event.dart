part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp({
    required String email,
    required String password,
    required String name,
  }) = AuthSignUpEvent;
  const factory AuthEvent.signIn({
    required String email,
    required String password,
  }) = AuthSignInEvent;
}