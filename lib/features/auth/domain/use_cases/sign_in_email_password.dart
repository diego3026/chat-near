import 'package:chat_near/core/error/failure.dart';
import 'package:chat_near/features/auth/domain/entities/login_user.dart';
import 'package:chat_near/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SignInEmailPasswordUseCase {
  final AuthRepository _authRepository;

  SignInEmailPasswordUseCase(this._authRepository);

  Future<Either<Failure, bool>> call(LoginUser loginUser) {
    return _authRepository.signInWithEmailAndPassword(loginUser);
  }
}
