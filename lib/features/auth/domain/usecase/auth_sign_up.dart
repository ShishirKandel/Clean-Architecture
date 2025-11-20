import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/core/usecase/usecase.dart';
import 'package:clean_architecture/features/auth/domain/entity/user_entity.dart';
import 'package:clean_architecture/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthSignUp implements UseCase<UserEntity, AuthSignUpParams> {
  final AuthRepository authRepository;

  AuthSignUp({required this.authRepository});
  @override
  Future<Either<Failure, UserEntity>> call(AuthSignUpParams params) {
    return authRepository.signUpWithEmailAndPassword(name: params.name, email: params.email, password: params.password);
  }
}

class AuthSignUpParams {
  final String name;
  final String email;
  final String password;

  AuthSignUpParams({required this.name, required this.email, required this.password});
}