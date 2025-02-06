import 'package:dartz/dartz.dart';
import 'package:johny_portfolio/core/error/failures.dart';
import 'package:johny_portfolio/core/logging/logger_service.dart';
import 'package:johny_portfolio/features/pokemon/data/repositories/pokemon_repository_impl.dart';

class FetchRandomPokemon {
  final PokemonRepository repository;

  FetchRandomPokemon(this.repository);

  Future<Either<Failure, Map<String, String>>> call() async {
    LoggerService.logInfo('Executing FetchRandomPokemon use case...');
    final result = await repository.getRandomPokemon();
    result.fold(
      (failure) => LoggerService.logError('Fetch failed: ${failure.message}'),
      (pokemon) => LoggerService.logInfo('Fetch succeeded: ${pokemon['name']}'),
    );
    return result;
  }
}
