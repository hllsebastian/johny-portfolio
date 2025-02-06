import 'package:dartz/dartz.dart';
import 'package:johny_portfolio/core/error/failures.dart';

abstract class WordRepository {
  Future<Either<Failure, String>> getRandomWord();
}
