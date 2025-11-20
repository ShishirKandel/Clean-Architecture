import 'package:clean_architecture/features/auth/data/dataSource/auth_remote_data_source.dart';
import 'package:clean_architecture/features/auth/data/repository/auth_repo_impl.dart';
import 'package:clean_architecture/features/auth/domain/repository/auth_repository.dart';
import 'package:clean_architecture/features/auth/domain/usecase/auth_sign_in.dart';
import 'package:clean_architecture/features/auth/domain/usecase/auth_sign_up.dart';
import 'package:clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependency() async {
  _initAuth();
}

void _initAuth() {
  // Data Source
  serviceLocator
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(serviceLocator()),
    )
    // Repository
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepoImpl(serviceLocator()),
    )
    // Usecase
    ..registerLazySingleton(() => AuthSignUp(authRepository: serviceLocator()))
    ..registerLazySingleton(() => AuthSignIn(authRepository: serviceLocator()))
    // Bloc
    ..registerLazySingleton(
      () =>
          AuthBloc(authSignUp: serviceLocator(), authSignIn: serviceLocator()),
    );
}
