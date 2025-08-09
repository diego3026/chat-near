import 'package:chat_near/core/error/failure.dart';
import 'package:chat_near/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrentUserIdUseCase {
  final AuthRepository authRepository;

  GetCurrentUserIdUseCase(this.authRepository);

  Future<Either<Failure, String>> call() async {
    return await authRepository.getCurrentUserId();
  }
}
