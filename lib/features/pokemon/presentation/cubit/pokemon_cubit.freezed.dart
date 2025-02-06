// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonState {
  String? get word => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Set<String>? get guessedLetters => throw _privateConstructorUsedError;
  int get remainingTime => throw _privateConstructorUsedError;
  int get remainingAttempts => throw _privateConstructorUsedError;
  bool get isGameOver => throw _privateConstructorUsedError;
  bool get isWinner => throw _privateConstructorUsedError;
  bool get pausedGame => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? word,
            String? imageUrl,
            bool isLoading,
            Set<String>? guessedLetters,
            int remainingTime,
            int remainingAttempts,
            bool isGameOver,
            bool isWinner,
            bool pausedGame,
            String? error)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? word,
            String? imageUrl,
            bool isLoading,
            Set<String>? guessedLetters,
            int remainingTime,
            int remainingAttempts,
            bool isGameOver,
            bool isWinner,
            bool pausedGame,
            String? error)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? word,
            String? imageUrl,
            bool isLoading,
            Set<String>? guessedLetters,
            int remainingTime,
            int remainingAttempts,
            bool isGameOver,
            bool isWinner,
            bool pausedGame,
            String? error)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res, PokemonState>;
  @useResult
  $Res call(
      {String? word,
      String? imageUrl,
      bool isLoading,
      Set<String>? guessedLetters,
      int remainingTime,
      int remainingAttempts,
      bool isGameOver,
      bool isWinner,
      bool pausedGame,
      String? error});
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
    Object? imageUrl = freezed,
    Object? isLoading = null,
    Object? guessedLetters = freezed,
    Object? remainingTime = null,
    Object? remainingAttempts = null,
    Object? isGameOver = null,
    Object? isWinner = null,
    Object? pausedGame = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      guessedLetters: freezed == guessedLetters
          ? _value.guessedLetters
          : guessedLetters // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      remainingAttempts: null == remainingAttempts
          ? _value.remainingAttempts
          : remainingAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      isGameOver: null == isGameOver
          ? _value.isGameOver
          : isGameOver // ignore: cast_nullable_to_non_nullable
              as bool,
      isWinner: null == isWinner
          ? _value.isWinner
          : isWinner // ignore: cast_nullable_to_non_nullable
              as bool,
      pausedGame: null == pausedGame
          ? _value.pausedGame
          : pausedGame // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? word,
      String? imageUrl,
      bool isLoading,
      Set<String>? guessedLetters,
      int remainingTime,
      int remainingAttempts,
      bool isGameOver,
      bool isWinner,
      bool pausedGame,
      String? error});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
    Object? imageUrl = freezed,
    Object? isLoading = null,
    Object? guessedLetters = freezed,
    Object? remainingTime = null,
    Object? remainingAttempts = null,
    Object? isGameOver = null,
    Object? isWinner = null,
    Object? pausedGame = null,
    Object? error = freezed,
  }) {
    return _then(_$InitialImpl(
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      guessedLetters: freezed == guessedLetters
          ? _value._guessedLetters
          : guessedLetters // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      remainingAttempts: null == remainingAttempts
          ? _value.remainingAttempts
          : remainingAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      isGameOver: null == isGameOver
          ? _value.isGameOver
          : isGameOver // ignore: cast_nullable_to_non_nullable
              as bool,
      isWinner: null == isWinner
          ? _value.isWinner
          : isWinner // ignore: cast_nullable_to_non_nullable
              as bool,
      pausedGame: null == pausedGame
          ? _value.pausedGame
          : pausedGame // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.word = '',
      this.imageUrl = '',
      this.isLoading = false,
      final Set<String>? guessedLetters,
      this.remainingTime = 0,
      this.remainingAttempts = 0,
      this.isGameOver = false,
      this.isWinner = false,
      this.pausedGame = false,
      this.error})
      : _guessedLetters = guessedLetters;

  @override
  @JsonKey()
  final String? word;
  @override
  @JsonKey()
  final String? imageUrl;
  @override
  @JsonKey()
  final bool isLoading;
  final Set<String>? _guessedLetters;
  @override
  Set<String>? get guessedLetters {
    final value = _guessedLetters;
    if (value == null) return null;
    if (_guessedLetters is EqualUnmodifiableSetView) return _guessedLetters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  @JsonKey()
  final int remainingTime;
  @override
  @JsonKey()
  final int remainingAttempts;
  @override
  @JsonKey()
  final bool isGameOver;
  @override
  @JsonKey()
  final bool isWinner;
  @override
  @JsonKey()
  final bool pausedGame;
  @override
  final String? error;

  @override
  String toString() {
    return 'PokemonState.initial(word: $word, imageUrl: $imageUrl, isLoading: $isLoading, guessedLetters: $guessedLetters, remainingTime: $remainingTime, remainingAttempts: $remainingAttempts, isGameOver: $isGameOver, isWinner: $isWinner, pausedGame: $pausedGame, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._guessedLetters, _guessedLetters) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime) &&
            (identical(other.remainingAttempts, remainingAttempts) ||
                other.remainingAttempts == remainingAttempts) &&
            (identical(other.isGameOver, isGameOver) ||
                other.isGameOver == isGameOver) &&
            (identical(other.isWinner, isWinner) ||
                other.isWinner == isWinner) &&
            (identical(other.pausedGame, pausedGame) ||
                other.pausedGame == pausedGame) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      imageUrl,
      isLoading,
      const DeepCollectionEquality().hash(_guessedLetters),
      remainingTime,
      remainingAttempts,
      isGameOver,
      isWinner,
      pausedGame,
      error);

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? word,
            String? imageUrl,
            bool isLoading,
            Set<String>? guessedLetters,
            int remainingTime,
            int remainingAttempts,
            bool isGameOver,
            bool isWinner,
            bool pausedGame,
            String? error)
        initial,
  }) {
    return initial(word, imageUrl, isLoading, guessedLetters, remainingTime,
        remainingAttempts, isGameOver, isWinner, pausedGame, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? word,
            String? imageUrl,
            bool isLoading,
            Set<String>? guessedLetters,
            int remainingTime,
            int remainingAttempts,
            bool isGameOver,
            bool isWinner,
            bool pausedGame,
            String? error)?
        initial,
  }) {
    return initial?.call(
        word,
        imageUrl,
        isLoading,
        guessedLetters,
        remainingTime,
        remainingAttempts,
        isGameOver,
        isWinner,
        pausedGame,
        error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? word,
            String? imageUrl,
            bool isLoading,
            Set<String>? guessedLetters,
            int remainingTime,
            int remainingAttempts,
            bool isGameOver,
            bool isWinner,
            bool pausedGame,
            String? error)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(word, imageUrl, isLoading, guessedLetters, remainingTime,
          remainingAttempts, isGameOver, isWinner, pausedGame, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PokemonState {
  const factory _Initial(
      {final String? word,
      final String? imageUrl,
      final bool isLoading,
      final Set<String>? guessedLetters,
      final int remainingTime,
      final int remainingAttempts,
      final bool isGameOver,
      final bool isWinner,
      final bool pausedGame,
      final String? error}) = _$InitialImpl;

  @override
  String? get word;
  @override
  String? get imageUrl;
  @override
  bool get isLoading;
  @override
  Set<String>? get guessedLetters;
  @override
  int get remainingTime;
  @override
  int get remainingAttempts;
  @override
  bool get isGameOver;
  @override
  bool get isWinner;
  @override
  bool get pausedGame;
  @override
  String? get error;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
