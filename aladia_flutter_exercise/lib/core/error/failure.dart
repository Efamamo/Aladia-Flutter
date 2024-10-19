import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure()
      : super("Server error occurred. Please try again later.");
}

class ConnectionFailure extends Failure {
  const ConnectionFailure()
      : super("No internet connection. Please try again later.");
}

class NotFoundEmailFailure extends Failure {
  const NotFoundEmailFailure() : super("Email not found. Please try again.");
}

class InvalidEmailFailure extends Failure {
  const InvalidEmailFailure() : super("Email is not valid. Please try again.");
}

class InvalidPasswordFailure extends Failure {
  const InvalidPasswordFailure() : super("Invalid password. Please try again.");
}
