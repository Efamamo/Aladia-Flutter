import 'package:aladia_flutter_exercise/core/network/network_info.dart';
import 'package:aladia_flutter_exercise/features/authentication/data/resources/auth_remote_datasource.dart';
import 'package:aladia_flutter_exercise/features/authentication/domain/repositories/auth_repository.dart';
import 'package:aladia_flutter_exercise/features/authentication/domain/usecases/login_usecase.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    AuthRemoteDatasourceImpl,
    NetworkInfoImpl,
    InternetConnectionChecker,
    AuthRepository,
    LoginUseCase,
    http.Client
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
