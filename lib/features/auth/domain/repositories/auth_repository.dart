import 'package:chat_near/core/error/failure.dart';
import 'package:chat_near/features/auth/domain/entities/login_user.dart';
import 'package:chat_near/features/auth/domain/entities/register_user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> signInWithEmailAndPassword(LoginUser loginUser);
  Future<Either<Failure, bool>> signUpWithEmailAndPassword(
    RegisterUser registerUser,
  );
  Future<Either<Failure, bool>> resetPassword(String email);
  Future<Either<Failure, bool>> signInWithGoogle();
  Future<Either<Failure, bool>> signOut();
  Future<Either<Failure, bool>> isSignedIn();
  Future<Either<Failure, String>> getCurrentUserId();
  Future<Either<Failure, String>> getCurrentUserName();
  Future<Either<Failure, String>> getCurrentUserEmail();
}
