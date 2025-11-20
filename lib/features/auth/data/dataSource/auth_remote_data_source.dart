import 'package:clean_architecture/core/errors/exception.dart';
import 'package:clean_architecture/features/auth/data/model/user_model.dart';
import 'package:supabase/supabase.dart';

abstract interface class AuthRemoteDataSource {
  Future<UserModel> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImpl(this.supabaseClient);
  @override
  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try{
      final response = await supabaseClient.auth.signInWithPassword(password: password, email: email);
    if (response.user == null){
      throw ServerException("User is null");
    }
    return UserModel.fromJson(response.user!.toJson());
    }catch(e){
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async{
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {"name": name},
      );
      if(response.user == null){
        throw ServerException("User is Null");
      }
      return UserModel.fromJson(response.user!.toJson());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
