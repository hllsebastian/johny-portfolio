// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hangman_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HangmanState {
  String get word => throw _privateConstructorUsedError; // Palabra a adivinar
  Set<String> get guessedLetters =>
      throw _privateConstructorUsedError; // Letras adivinadas
  int get remainingAttempts =>
      throw _privateConstructorUsedError; // Intentos restantes
  bool get isGameOver => throw _privateConstructorUsedError;
  bool get isWinner => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, Set<String> guessedLetters,
            int remainingAttempts, bool isGameOver, bool isWinner)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, Set<String> guessedLetters,
            int remainingAttempts, bool isGameOver, bool isWinner)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, Set<String> guessedLetters,
            int remainingAttempts, bool isGameOver, bool isWinner)?
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

  /// Create a copy of HangmanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HangmanStateCopyWith<HangmanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HangmanStateCopyWith<$Res> {
  factory $HangmanStateCopyWith(
          HangmanState value, $Res Function(HangmanState) then) =
      _$HangmanStateCopyWithImpl<$Res, HangmanState>;
  @useResult
  $Res call(
      {String word,
      Set<String> guessedLetters,
      int remainingAttempts,
      bool isGameOver,
      bool isWinner});
}

/// @nodoc
class _$HangmanStateCopyWithImpl<$Res, $Val extends HangmanState>
    implements $HangmanStateCopyWith<$Res> {
  _$HangmanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HangmanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? guessedLetters = null,
    Object? remainingAttempts = null,
    Object? isGameOver = null,
    Object? isWinner = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      guessedLetters: null == guessedLetters
          ? _value.guessedLetters
          : guessedLetters // ignore: cast_nullable_to_non_nullable
              as Set<String>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HangmanStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      Set<String> guessedLetters,
      int remainingAttempts,
      bool isGameOver,
      bool isWinner});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HangmanStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HangmanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? guessedLetters = null,
    Object? remainingAttempts = null,
    Object? isGameOver = null,
    Object? isWinner = null,
  }) {
    return _then(_$InitialImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      guessedLetters: null == guessedLetters
          ? _value._guessedLetters
          : guessedLetters // ignore: cast_nullable_to_non_nullable
              as Set<String>,
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
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.word = 'Aloha',
      final Set<String> guessedLetters = const {},
      this.remainingAttempts = 5,
      this.isGameOver = false,
      this.isWinner = false})
      : _guessedLetters = guessedLetters;

  @override
  @JsonKey()
  final String word;
// Palabra a adivinar
  final Set<String> _guessedLetters;
// Palabra a adivinar
  @override
  @JsonKey()
  Set<String> get guessedLetters {
    if (_guessedLetters is EqualUnmodifiableSetView) return _guessedLetters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_guessedLetters);
  }

// Letras adivinadas
  @override
  @JsonKey()
  final int remainingAttempts;
// Intentos restantes
  @override
  @JsonKey()
  final bool isGameOver;
  @override
  @JsonKey()
  final bool isWinner;

  @override
  String toString() {
    return 'HangmanState.initial(word: $word, guessedLetters: $guessedLetters, remainingAttempts: $remainingAttempts, isGameOver: $isGameOver, isWinner: $isWinner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.word, word) || other.word == word) &&
            const DeepCollectionEquality()
                .equals(other._guessedLetters, _guessedLetters) &&
            (identical(other.remainingAttempts, remainingAttempts) ||
                other.remainingAttempts == remainingAttempts) &&
            (identical(other.isGameOver, isGameOver) ||
                other.isGameOver == isGameOver) &&
            (identical(other.isWinner, isWinner) ||
                other.isWinner == isWinner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      const DeepCollectionEquality().hash(_guessedLetters),
      remainingAttempts,
      isGameOver,
      isWinner);

  /// Create a copy of HangmanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, Set<String> guessedLetters,
            int remainingAttempts, bool isGameOver, bool isWinner)
        initial,
  }) {
    return initial(
        word, guessedLetters, remainingAttempts, isGameOver, isWinner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, Set<String> guessedLetters,
            int remainingAttempts, bool isGameOver, bool isWinner)?
        initial,
  }) {
    return initial?.call(
        word, guessedLetters, remainingAttempts, isGameOver, isWinner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, Set<String> guessedLetters,
            int remainingAttempts, bool isGameOver, bool isWinner)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          word, guessedLetters, remainingAttempts, isGameOver, isWinner);
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

abstract class _Initial implements HangmanState {
  const factory _Initial(
      {final String word,
      final Set<String> guessedLetters,
      final int remainingAttempts,
      final bool isGameOver,
      final bool isWinner}) = _$InitialImpl;

  @override
  String get word; // Palabra a adivinar
  @override
  Set<String> get guessedLetters; // Letras adivinadas
  @override
  int get remainingAttempts; // Intentos restantes
  @override
  bool get isGameOver;
  @override
  bool get isWinner;

  /// Create a copy of HangmanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
