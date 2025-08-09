import 'package:chat_near/core/error/failure.dart';
import 'package:chat_near/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class ResetPasswordUseCase {
  final AuthRepository repository;

  ResetPasswordUseCase(this.repository);

  Future<Either<Failure, bool>> call(String email) {
    return repository.resetPassword(email);
  }
}
