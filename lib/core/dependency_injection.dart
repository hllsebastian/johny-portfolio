import 'package:http/http.dart' as http;
import 'package:johny_portfolio/core/network/http_client.dart';

import 'package:get_it/get_it.dart';
import 'package:johny_portfolio/features/hangman/data/datasources/word_remote_data_source.dart';
import 'package:johny_portfolio/features/hangman/data/repositories/word_repository_impl.dart';
import 'package:johny_portfolio/features/hangman/domain/repositories/word_repository.dart';
import 'package:johny_portfolio/features/hangman/domain/usecases/fetch_random_word.dart';
import 'package:johny_portfolio/features/hangman/presentation/cubit/hangman_cubit.dart';
import 'package:johny_portfolio/features/pokemon/data/datasources/pokemon_remote_data_source.dart';
import 'package:johny_portfolio/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:johny_portfolio/features/pokemon/domain/usecases/fetch_random_pokemon.dart';
import 'package:johny_portfolio/features/pokemon/presentation/cubit/pokemon_cubit.dart';

final getIt = GetIt.instance;

Future<void> dependecyInjection() async {
// http
  getIt.registerLazySingleton<http.Client>(() => http.Client());
  getIt.registerLazySingleton<HttpClient>(
      () => HttpClient(getIt<http.Client>()));

// Datasource
  getIt.registerLazySingleton<WordRemoteDataSource>(
      () => WordRemoteDataSourceImpl(getIt<HttpClient>()));

  getIt.registerLazySingleton<PokemonRemoteDataSource>(
      () => PokemonRemoteDataSourceImpl(getIt<HttpClient>()));

// Repositories
  getIt.registerLazySingleton<WordRepository>(
      () => WordRepositoryImpl(getIt<WordRemoteDataSource>()));

  getIt.registerLazySingleton<PokemonRepository>(
      () => PokemonRepositoryImpl(getIt<PokemonRemoteDataSource>()));

// Usecases
  getIt.registerLazySingleton<FetchRandomWord>(
      () => FetchRandomWord(getIt<WordRepository>()));

  getIt.registerLazySingleton<FetchRandomPokemon>(
      () => FetchRandomPokemon(getIt<PokemonRepository>()));

// Cubits
  getIt.registerFactory<HangmanCubit>(
      () => HangmanCubit(getIt<FetchRandomWord>()));
  getIt.registerFactory<PokemonCubit>(
      () => PokemonCubit(getIt<FetchRandomPokemon>()));
}
