import 'package:aladia_flutter_exercise/core/network/network.dart';
import 'package:aladia_flutter_exercise/features/authentication/data/resources/auth_remote_datasource.dart';
import 'package:aladia_flutter_exercise/features/authentication/domain/entity/login_entity.dart';
import 'package:aladia_flutter_exercise/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../model/login_response_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource authRemoteDataSource;
  final NetworkInfo networkInfo;
  AuthRepositoryImpl({
    required this.authRemoteDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, void>> login(LoginEntity user) async {
    if (await networkInfo.isConnected) {
      try {
        await authRemoteDataSource.login(LoginResponseModel.toModel(user));

        return const Right(null);
      } catch (error) {
        if (error is Failure) {
          return Left(error);
        } else {
          return const Left(ServerFailure());
        }
      }
    } else {
      return const Left(ConnectionFailure());
    }
  }
}
