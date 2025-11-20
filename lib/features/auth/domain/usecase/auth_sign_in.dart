import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/core/usecase/usecase.dart';
import 'package:clean_architecture/features/auth/domain/entity/user_entity.dart';
import 'package:clean_architecture/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthSignIn implements UseCase<UserEntity, AuthSignInParams> {
  final AuthRepository authRepository;

  AuthSignIn({required this.authRepository});
  @override
  Future<Either<Failure, UserEntity>> call(AuthSignInParams params) async{
    return await authRepository.signInWithEmailAndPassword(email: params.email, password: params.password);
  }

}

class AuthSignInParams {
  final String email;
  final String password;

  AuthSignInParams({required this.email, required this.password});
}