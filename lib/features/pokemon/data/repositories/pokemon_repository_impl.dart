import 'package:dartz/dartz.dart';
import 'package:johny_portfolio/core/error/failures.dart';
import 'package:johny_portfolio/core/logging/logger_service.dart';
import 'package:johny_portfolio/features/pokemon/data/datasources/pokemon_remote_data_source.dart';

abstract class PokemonRepository {
  Future<Either<Failure, Map<String, String>>> getRandomPokemon();
}

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  PokemonRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, Map<String, String>>> getRandomPokemon() async {
    try {
      LoggerService.logInfo('Fetching random Pokémon from API...');
      final pokemon = await remoteDataSource.fetchRandomPokemon();
      LoggerService.logInfo('Fetched Pokémon: ${pokemon['name']}');
      return Right(pokemon);
    } catch (e, stackTrace) {
      LoggerService.logError(
        'Error fetching Pokémon',
        DateTime.now(),
        e,
        stackTrace,
      );
      return Left(ServerFailure(e.toString()));
    }
  }
}
