import 'package:chat_near/core/error/failure.dart';
import 'package:chat_near/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SignInGoogleUseCase {
  final AuthRepository authRepository;

  SignInGoogleUseCase(this.authRepository);

  Future<Either<Failure, bool>> call() {
    return authRepository.signInWithGoogle();
  }
}
