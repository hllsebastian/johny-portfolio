import 'package:dartz/dartz.dart';
import 'package:johny_portfolio/core/error/exceptions.dart';
import 'package:johny_portfolio/core/error/failures.dart';
import 'package:johny_portfolio/features/hangman/data/datasources/word_remote_data_source.dart';
import 'package:johny_portfolio/features/hangman/domain/repositories/word_repository.dart';

class WordRepositoryImpl implements WordRepository {
  final WordRemoteDataSource remoteDataSource;

  WordRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, String>> getRandomWord() async {
    try {
      final word = await remoteDataSource.fetchRandomWord();
      return Right(word);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
