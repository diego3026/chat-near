abstract class Failure {
  final String message;

  Failure(this.message);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);
}

class AuthenticationFailure extends Failure {
  AuthenticationFailure(super.message);
}

class UserNotFoundFailure extends Failure {
  UserNotFoundFailure(super.message);
}

class UnknownFailure extends Failure {
  UnknownFailure(super.message);
}

class InvalidInputFailure extends Failure {
  InvalidInputFailure(super.message);
}
