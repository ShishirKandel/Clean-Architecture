// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture/core/errors/exception.dart';
import 'package:clean_architecture/features/auth/domain/entity/user_entity.dart';
import 'package:fpdart/fpdart.dart';

import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/features/auth/data/dataSource/auth_remote_data_source.dart';
import 'package:clean_architecture/features/auth/domain/repository/auth_repository.dart';

class AuthRepoImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepoImpl(
     this.authRemoteDataSource,
  );
  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({required String email, required String password}) async{
    try{
      final res = await authRemoteDataSource.signInWithEmailAndPassword(email: email, password: password);
      return right(res);
    } on ServerException catch(e){
      return left(Failure(e.msg));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({required String name, required String email, required String password}) async{
    try{
      final response = await authRemoteDataSource.signUpWithEmailAndPassword(name: name, email: email, password: password);
      return right(response);
    } on ServerException catch(e){
      return left(Failure(e.msg));
    }
  }
}
