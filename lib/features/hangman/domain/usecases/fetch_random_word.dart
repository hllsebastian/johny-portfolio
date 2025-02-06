import 'package:dartz/dartz.dart';
import 'package:johny_portfolio/core/error/failures.dart';
import 'package:johny_portfolio/features/hangman/domain/repositories/word_repository.dart';

class FetchRandomWord {
  final WordRepository repository;

  FetchRandomWord(this.repository);

  Future<Either<Failure, String>> call() {
    return repository.getRandomWord();
  }
}
