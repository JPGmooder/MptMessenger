// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'searcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tag) searchByTag,
    required TResult Function() searchClean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tag)? searchByTag,
    TResult Function()? searchClean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tag)? searchByTag,
    TResult Function()? searchClean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherByTagEvent value) searchByTag,
    required TResult Function(_$SearcherCleanEvent value) searchClean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherByTagEvent value)? searchByTag,
    TResult Function(_$SearcherCleanEvent value)? searchClean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherByTagEvent value)? searchByTag,
    TResult Function(_$SearcherCleanEvent value)? searchClean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearcherEventCopyWith<$Res> {
  factory $SearcherEventCopyWith(
          SearcherEvent value, $Res Function(SearcherEvent) then) =
      _$SearcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearcherEventCopyWithImpl<$Res>
    implements $SearcherEventCopyWith<$Res> {
  _$SearcherEventCopyWithImpl(this._value, this._then);

  final SearcherEvent _value;
  // ignore: unused_field
  final $Res Function(SearcherEvent) _then;
}

/// @nodoc
abstract class _$$_$SearcherByTagEventCopyWith<$Res> {
  factory _$$_$SearcherByTagEventCopyWith(_$_$SearcherByTagEvent value,
          $Res Function(_$_$SearcherByTagEvent) then) =
      __$$_$SearcherByTagEventCopyWithImpl<$Res>;
  $Res call({String tag});
}

/// @nodoc
class __$$_$SearcherByTagEventCopyWithImpl<$Res>
    extends _$SearcherEventCopyWithImpl<$Res>
    implements _$$_$SearcherByTagEventCopyWith<$Res> {
  __$$_$SearcherByTagEventCopyWithImpl(_$_$SearcherByTagEvent _value,
      $Res Function(_$_$SearcherByTagEvent) _then)
      : super(_value, (v) => _then(v as _$_$SearcherByTagEvent));

  @override
  _$_$SearcherByTagEvent get _value => super._value as _$_$SearcherByTagEvent;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_$_$SearcherByTagEvent(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$SearcherByTagEvent implements _$SearcherByTagEvent {
  const _$_$SearcherByTagEvent(this.tag);

  @override
  final String tag;

  @override
  String toString() {
    return 'SearcherEvent.searchByTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$SearcherByTagEvent &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$$_$SearcherByTagEventCopyWith<_$_$SearcherByTagEvent> get copyWith =>
      __$$_$SearcherByTagEventCopyWithImpl<_$_$SearcherByTagEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tag) searchByTag,
    required TResult Function() searchClean,
  }) {
    return searchByTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tag)? searchByTag,
    TResult Function()? searchClean,
  }) {
    return searchByTag?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tag)? searchByTag,
    TResult Function()? searchClean,
    required TResult orElse(),
  }) {
    if (searchByTag != null) {
      return searchByTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherByTagEvent value) searchByTag,
    required TResult Function(_$SearcherCleanEvent value) searchClean,
  }) {
    return searchByTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherByTagEvent value)? searchByTag,
    TResult Function(_$SearcherCleanEvent value)? searchClean,
  }) {
    return searchByTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherByTagEvent value)? searchByTag,
    TResult Function(_$SearcherCleanEvent value)? searchClean,
    required TResult orElse(),
  }) {
    if (searchByTag != null) {
      return searchByTag(this);
    }
    return orElse();
  }
}

abstract class _$SearcherByTagEvent implements SearcherEvent {
  const factory _$SearcherByTagEvent(final String tag) = _$_$SearcherByTagEvent;

  String get tag => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$SearcherByTagEventCopyWith<_$_$SearcherByTagEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$SearcherCleanEventCopyWith<$Res> {
  factory _$$_$SearcherCleanEventCopyWith(_$_$SearcherCleanEvent value,
          $Res Function(_$_$SearcherCleanEvent) then) =
      __$$_$SearcherCleanEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$SearcherCleanEventCopyWithImpl<$Res>
    extends _$SearcherEventCopyWithImpl<$Res>
    implements _$$_$SearcherCleanEventCopyWith<$Res> {
  __$$_$SearcherCleanEventCopyWithImpl(_$_$SearcherCleanEvent _value,
      $Res Function(_$_$SearcherCleanEvent) _then)
      : super(_value, (v) => _then(v as _$_$SearcherCleanEvent));

  @override
  _$_$SearcherCleanEvent get _value => super._value as _$_$SearcherCleanEvent;
}

/// @nodoc

class _$_$SearcherCleanEvent implements _$SearcherCleanEvent {
  const _$_$SearcherCleanEvent();

  @override
  String toString() {
    return 'SearcherEvent.searchClean()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$SearcherCleanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tag) searchByTag,
    required TResult Function() searchClean,
  }) {
    return searchClean();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tag)? searchByTag,
    TResult Function()? searchClean,
  }) {
    return searchClean?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tag)? searchByTag,
    TResult Function()? searchClean,
    required TResult orElse(),
  }) {
    if (searchClean != null) {
      return searchClean();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherByTagEvent value) searchByTag,
    required TResult Function(_$SearcherCleanEvent value) searchClean,
  }) {
    return searchClean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherByTagEvent value)? searchByTag,
    TResult Function(_$SearcherCleanEvent value)? searchClean,
  }) {
    return searchClean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherByTagEvent value)? searchByTag,
    TResult Function(_$SearcherCleanEvent value)? searchClean,
    required TResult orElse(),
  }) {
    if (searchClean != null) {
      return searchClean(this);
    }
    return orElse();
  }
}

abstract class _$SearcherCleanEvent implements SearcherEvent {
  const factory _$SearcherCleanEvent() = _$_$SearcherCleanEvent;
}

/// @nodoc
mixin _$SearcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AnotherUser> users) usersGot,
    required TResult Function() usersEmpty,
    required TResult Function() errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherInitialState value) initial,
    required TResult Function(_$SearcherLoadingState value) loading,
    required TResult Function(_$SearcherUsersGotState value) usersGot,
    required TResult Function(_$SearcherUsersEmptyState value) usersEmpty,
    required TResult Function(_$SearcherErroredState value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearcherStateCopyWith<$Res> {
  factory $SearcherStateCopyWith(
          SearcherState value, $Res Function(SearcherState) then) =
      _$SearcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearcherStateCopyWithImpl<$Res>
    implements $SearcherStateCopyWith<$Res> {
  _$SearcherStateCopyWithImpl(this._value, this._then);

  final SearcherState _value;
  // ignore: unused_field
  final $Res Function(SearcherState) _then;
}

/// @nodoc
abstract class _$$_$SearcherInitialStateCopyWith<$Res> {
  factory _$$_$SearcherInitialStateCopyWith(_$_$SearcherInitialState value,
          $Res Function(_$_$SearcherInitialState) then) =
      __$$_$SearcherInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$SearcherInitialStateCopyWithImpl<$Res>
    extends _$SearcherStateCopyWithImpl<$Res>
    implements _$$_$SearcherInitialStateCopyWith<$Res> {
  __$$_$SearcherInitialStateCopyWithImpl(_$_$SearcherInitialState _value,
      $Res Function(_$_$SearcherInitialState) _then)
      : super(_value, (v) => _then(v as _$_$SearcherInitialState));

  @override
  _$_$SearcherInitialState get _value =>
      super._value as _$_$SearcherInitialState;
}

/// @nodoc

class _$_$SearcherInitialState implements _$SearcherInitialState {
  const _$_$SearcherInitialState();

  @override
  String toString() {
    return 'SearcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$SearcherInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AnotherUser> users) usersGot,
    required TResult Function() usersEmpty,
    required TResult Function() errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherInitialState value) initial,
    required TResult Function(_$SearcherLoadingState value) loading,
    required TResult Function(_$SearcherUsersGotState value) usersGot,
    required TResult Function(_$SearcherUsersEmptyState value) usersEmpty,
    required TResult Function(_$SearcherErroredState value) errored,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$SearcherInitialState implements SearcherState {
  const factory _$SearcherInitialState() = _$_$SearcherInitialState;
}

/// @nodoc
abstract class _$$_$SearcherLoadingStateCopyWith<$Res> {
  factory _$$_$SearcherLoadingStateCopyWith(_$_$SearcherLoadingState value,
          $Res Function(_$_$SearcherLoadingState) then) =
      __$$_$SearcherLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$SearcherLoadingStateCopyWithImpl<$Res>
    extends _$SearcherStateCopyWithImpl<$Res>
    implements _$$_$SearcherLoadingStateCopyWith<$Res> {
  __$$_$SearcherLoadingStateCopyWithImpl(_$_$SearcherLoadingState _value,
      $Res Function(_$_$SearcherLoadingState) _then)
      : super(_value, (v) => _then(v as _$_$SearcherLoadingState));

  @override
  _$_$SearcherLoadingState get _value =>
      super._value as _$_$SearcherLoadingState;
}

/// @nodoc

class _$_$SearcherLoadingState implements _$SearcherLoadingState {
  const _$_$SearcherLoadingState();

  @override
  String toString() {
    return 'SearcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$SearcherLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AnotherUser> users) usersGot,
    required TResult Function() usersEmpty,
    required TResult Function() errored,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherInitialState value) initial,
    required TResult Function(_$SearcherLoadingState value) loading,
    required TResult Function(_$SearcherUsersGotState value) usersGot,
    required TResult Function(_$SearcherUsersEmptyState value) usersEmpty,
    required TResult Function(_$SearcherErroredState value) errored,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$SearcherLoadingState implements SearcherState {
  const factory _$SearcherLoadingState() = _$_$SearcherLoadingState;
}

/// @nodoc
abstract class _$$_$SearcherUsersGotStateCopyWith<$Res> {
  factory _$$_$SearcherUsersGotStateCopyWith(_$_$SearcherUsersGotState value,
          $Res Function(_$_$SearcherUsersGotState) then) =
      __$$_$SearcherUsersGotStateCopyWithImpl<$Res>;
  $Res call({List<AnotherUser> users});
}

/// @nodoc
class __$$_$SearcherUsersGotStateCopyWithImpl<$Res>
    extends _$SearcherStateCopyWithImpl<$Res>
    implements _$$_$SearcherUsersGotStateCopyWith<$Res> {
  __$$_$SearcherUsersGotStateCopyWithImpl(_$_$SearcherUsersGotState _value,
      $Res Function(_$_$SearcherUsersGotState) _then)
      : super(_value, (v) => _then(v as _$_$SearcherUsersGotState));

  @override
  _$_$SearcherUsersGotState get _value =>
      super._value as _$_$SearcherUsersGotState;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$_$SearcherUsersGotState(
      users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AnotherUser>,
    ));
  }
}

/// @nodoc

class _$_$SearcherUsersGotState implements _$SearcherUsersGotState {
  const _$_$SearcherUsersGotState(final List<AnotherUser> users)
      : _users = users;

  final List<AnotherUser> _users;
  @override
  List<AnotherUser> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'SearcherState.usersGot(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$SearcherUsersGotState &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$_$SearcherUsersGotStateCopyWith<_$_$SearcherUsersGotState> get copyWith =>
      __$$_$SearcherUsersGotStateCopyWithImpl<_$_$SearcherUsersGotState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AnotherUser> users) usersGot,
    required TResult Function() usersEmpty,
    required TResult Function() errored,
  }) {
    return usersGot(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
  }) {
    return usersGot?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (usersGot != null) {
      return usersGot(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherInitialState value) initial,
    required TResult Function(_$SearcherLoadingState value) loading,
    required TResult Function(_$SearcherUsersGotState value) usersGot,
    required TResult Function(_$SearcherUsersEmptyState value) usersEmpty,
    required TResult Function(_$SearcherErroredState value) errored,
  }) {
    return usersGot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
  }) {
    return usersGot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (usersGot != null) {
      return usersGot(this);
    }
    return orElse();
  }
}

abstract class _$SearcherUsersGotState implements SearcherState {
  const factory _$SearcherUsersGotState(final List<AnotherUser> users) =
      _$_$SearcherUsersGotState;

  List<AnotherUser> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$SearcherUsersGotStateCopyWith<_$_$SearcherUsersGotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$SearcherUsersEmptyStateCopyWith<$Res> {
  factory _$$_$SearcherUsersEmptyStateCopyWith(
          _$_$SearcherUsersEmptyState value,
          $Res Function(_$_$SearcherUsersEmptyState) then) =
      __$$_$SearcherUsersEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$SearcherUsersEmptyStateCopyWithImpl<$Res>
    extends _$SearcherStateCopyWithImpl<$Res>
    implements _$$_$SearcherUsersEmptyStateCopyWith<$Res> {
  __$$_$SearcherUsersEmptyStateCopyWithImpl(_$_$SearcherUsersEmptyState _value,
      $Res Function(_$_$SearcherUsersEmptyState) _then)
      : super(_value, (v) => _then(v as _$_$SearcherUsersEmptyState));

  @override
  _$_$SearcherUsersEmptyState get _value =>
      super._value as _$_$SearcherUsersEmptyState;
}

/// @nodoc

class _$_$SearcherUsersEmptyState implements _$SearcherUsersEmptyState {
  const _$_$SearcherUsersEmptyState();

  @override
  String toString() {
    return 'SearcherState.usersEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$SearcherUsersEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AnotherUser> users) usersGot,
    required TResult Function() usersEmpty,
    required TResult Function() errored,
  }) {
    return usersEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
  }) {
    return usersEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (usersEmpty != null) {
      return usersEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherInitialState value) initial,
    required TResult Function(_$SearcherLoadingState value) loading,
    required TResult Function(_$SearcherUsersGotState value) usersGot,
    required TResult Function(_$SearcherUsersEmptyState value) usersEmpty,
    required TResult Function(_$SearcherErroredState value) errored,
  }) {
    return usersEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
  }) {
    return usersEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (usersEmpty != null) {
      return usersEmpty(this);
    }
    return orElse();
  }
}

abstract class _$SearcherUsersEmptyState implements SearcherState {
  const factory _$SearcherUsersEmptyState() = _$_$SearcherUsersEmptyState;
}

/// @nodoc
abstract class _$$_$SearcherErroredStateCopyWith<$Res> {
  factory _$$_$SearcherErroredStateCopyWith(_$_$SearcherErroredState value,
          $Res Function(_$_$SearcherErroredState) then) =
      __$$_$SearcherErroredStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$SearcherErroredStateCopyWithImpl<$Res>
    extends _$SearcherStateCopyWithImpl<$Res>
    implements _$$_$SearcherErroredStateCopyWith<$Res> {
  __$$_$SearcherErroredStateCopyWithImpl(_$_$SearcherErroredState _value,
      $Res Function(_$_$SearcherErroredState) _then)
      : super(_value, (v) => _then(v as _$_$SearcherErroredState));

  @override
  _$_$SearcherErroredState get _value =>
      super._value as _$_$SearcherErroredState;
}

/// @nodoc

class _$_$SearcherErroredState implements _$SearcherErroredState {
  const _$_$SearcherErroredState();

  @override
  String toString() {
    return 'SearcherState.errored()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$SearcherErroredState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AnotherUser> users) usersGot,
    required TResult Function() usersEmpty,
    required TResult Function() errored,
  }) {
    return errored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
  }) {
    return errored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AnotherUser> users)? usersGot,
    TResult Function()? usersEmpty,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SearcherInitialState value) initial,
    required TResult Function(_$SearcherLoadingState value) loading,
    required TResult Function(_$SearcherUsersGotState value) usersGot,
    required TResult Function(_$SearcherUsersEmptyState value) usersEmpty,
    required TResult Function(_$SearcherErroredState value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SearcherInitialState value)? initial,
    TResult Function(_$SearcherLoadingState value)? loading,
    TResult Function(_$SearcherUsersGotState value)? usersGot,
    TResult Function(_$SearcherUsersEmptyState value)? usersEmpty,
    TResult Function(_$SearcherErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$SearcherErroredState implements SearcherState {
  const factory _$SearcherErroredState() = _$_$SearcherErroredState;
}
