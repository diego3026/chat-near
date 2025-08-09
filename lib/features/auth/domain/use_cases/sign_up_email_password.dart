import 'package:chat_near/core/error/failure.dart';
import 'package:chat_near/features/auth/domain/entities/register_user.dart';
import 'package:chat_near/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SignUpEmailPasswordUseCase {
  final AuthRepository authRepository;

  SignUpEmailPasswordUseCase(this.authRepository);

  Future<Either<Failure, bool>> call(RegisterUser registerUser) {
    return authRepository.signUpWithEmailAndPassword(registerUser);
  }
}
