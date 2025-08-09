import 'package:chat_near/core/error/failure.dart';
import 'package:chat_near/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrentUserNameUseCase {
  final AuthRepository authRepository;

  GetCurrentUserNameUseCase(this.authRepository);

  Future<Either<Failure, String>> call() async {
    return await authRepository.getCurrentUserName();
  }
}
