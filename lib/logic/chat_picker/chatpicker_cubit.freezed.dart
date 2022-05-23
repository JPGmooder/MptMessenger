// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chatpicker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatPickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(
            ChatModel pickedChat, List<Message>? attachedMessages)
        picked,
    required TResult Function() closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ChatPickerLoadingState value) loading,
    required TResult Function(_$ChatPickerInitialState value) initial,
    required TResult Function(_$ChatPickerPickedState value) picked,
    required TResult Function(_$ChatPickerClosedState value) closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPickerStateCopyWith<$Res> {
  factory $ChatPickerStateCopyWith(
          ChatPickerState value, $Res Function(ChatPickerState) then) =
      _$ChatPickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatPickerStateCopyWithImpl<$Res>
    implements $ChatPickerStateCopyWith<$Res> {
  _$ChatPickerStateCopyWithImpl(this._value, this._then);

  final ChatPickerState _value;
  // ignore: unused_field
  final $Res Function(ChatPickerState) _then;
}

/// @nodoc
abstract class _$$_$ChatPickerLoadingStateCopyWith<$Res> {
  factory _$$_$ChatPickerLoadingStateCopyWith(_$_$ChatPickerLoadingState value,
          $Res Function(_$_$ChatPickerLoadingState) then) =
      __$$_$ChatPickerLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$ChatPickerLoadingStateCopyWithImpl<$Res>
    extends _$ChatPickerStateCopyWithImpl<$Res>
    implements _$$_$ChatPickerLoadingStateCopyWith<$Res> {
  __$$_$ChatPickerLoadingStateCopyWithImpl(_$_$ChatPickerLoadingState _value,
      $Res Function(_$_$ChatPickerLoadingState) _then)
      : super(_value, (v) => _then(v as _$_$ChatPickerLoadingState));

  @override
  _$_$ChatPickerLoadingState get _value =>
      super._value as _$_$ChatPickerLoadingState;
}

/// @nodoc

class _$_$ChatPickerLoadingState
    with DiagnosticableTreeMixin
    implements _$ChatPickerLoadingState {
  const _$_$ChatPickerLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatPickerState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatPickerState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ChatPickerLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(
            ChatModel pickedChat, List<Message>? attachedMessages)
        picked,
    required TResult Function() closed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
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
    required TResult Function(_$ChatPickerLoadingState value) loading,
    required TResult Function(_$ChatPickerInitialState value) initial,
    required TResult Function(_$ChatPickerPickedState value) picked,
    required TResult Function(_$ChatPickerClosedState value) closed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$ChatPickerLoadingState implements ChatPickerState {
  const factory _$ChatPickerLoadingState() = _$_$ChatPickerLoadingState;
}

/// @nodoc
abstract class _$$_$ChatPickerInitialStateCopyWith<$Res> {
  factory _$$_$ChatPickerInitialStateCopyWith(_$_$ChatPickerInitialState value,
          $Res Function(_$_$ChatPickerInitialState) then) =
      __$$_$ChatPickerInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$ChatPickerInitialStateCopyWithImpl<$Res>
    extends _$ChatPickerStateCopyWithImpl<$Res>
    implements _$$_$ChatPickerInitialStateCopyWith<$Res> {
  __$$_$ChatPickerInitialStateCopyWithImpl(_$_$ChatPickerInitialState _value,
      $Res Function(_$_$ChatPickerInitialState) _then)
      : super(_value, (v) => _then(v as _$_$ChatPickerInitialState));

  @override
  _$_$ChatPickerInitialState get _value =>
      super._value as _$_$ChatPickerInitialState;
}

/// @nodoc

class _$_$ChatPickerInitialState
    with DiagnosticableTreeMixin
    implements _$ChatPickerInitialState {
  const _$_$ChatPickerInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatPickerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatPickerState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ChatPickerInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(
            ChatModel pickedChat, List<Message>? attachedMessages)
        picked,
    required TResult Function() closed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
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
    required TResult Function(_$ChatPickerLoadingState value) loading,
    required TResult Function(_$ChatPickerInitialState value) initial,
    required TResult Function(_$ChatPickerPickedState value) picked,
    required TResult Function(_$ChatPickerClosedState value) closed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$ChatPickerInitialState implements ChatPickerState {
  const factory _$ChatPickerInitialState() = _$_$ChatPickerInitialState;
}

/// @nodoc
abstract class _$$_$ChatPickerPickedStateCopyWith<$Res> {
  factory _$$_$ChatPickerPickedStateCopyWith(_$_$ChatPickerPickedState value,
          $Res Function(_$_$ChatPickerPickedState) then) =
      __$$_$ChatPickerPickedStateCopyWithImpl<$Res>;
  $Res call({ChatModel pickedChat, List<Message>? attachedMessages});
}

/// @nodoc
class __$$_$ChatPickerPickedStateCopyWithImpl<$Res>
    extends _$ChatPickerStateCopyWithImpl<$Res>
    implements _$$_$ChatPickerPickedStateCopyWith<$Res> {
  __$$_$ChatPickerPickedStateCopyWithImpl(_$_$ChatPickerPickedState _value,
      $Res Function(_$_$ChatPickerPickedState) _then)
      : super(_value, (v) => _then(v as _$_$ChatPickerPickedState));

  @override
  _$_$ChatPickerPickedState get _value =>
      super._value as _$_$ChatPickerPickedState;

  @override
  $Res call({
    Object? pickedChat = freezed,
    Object? attachedMessages = freezed,
  }) {
    return _then(_$_$ChatPickerPickedState(
      pickedChat == freezed
          ? _value.pickedChat
          : pickedChat // ignore: cast_nullable_to_non_nullable
              as ChatModel,
      attachedMessages == freezed
          ? _value._attachedMessages
          : attachedMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ));
  }
}

/// @nodoc

class _$_$ChatPickerPickedState
    with DiagnosticableTreeMixin
    implements _$ChatPickerPickedState {
  const _$_$ChatPickerPickedState(
      this.pickedChat, final List<Message>? attachedMessages)
      : _attachedMessages = attachedMessages;

  @override
  final ChatModel pickedChat;
  final List<Message>? _attachedMessages;
  @override
  List<Message>? get attachedMessages {
    final value = _attachedMessages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatPickerState.picked(pickedChat: $pickedChat, attachedMessages: $attachedMessages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatPickerState.picked'))
      ..add(DiagnosticsProperty('pickedChat', pickedChat))
      ..add(DiagnosticsProperty('attachedMessages', attachedMessages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ChatPickerPickedState &&
            const DeepCollectionEquality()
                .equals(other.pickedChat, pickedChat) &&
            const DeepCollectionEquality()
                .equals(other._attachedMessages, _attachedMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pickedChat),
      const DeepCollectionEquality().hash(_attachedMessages));

  @JsonKey(ignore: true)
  @override
  _$$_$ChatPickerPickedStateCopyWith<_$_$ChatPickerPickedState> get copyWith =>
      __$$_$ChatPickerPickedStateCopyWithImpl<_$_$ChatPickerPickedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(
            ChatModel pickedChat, List<Message>? attachedMessages)
        picked,
    required TResult Function() closed,
  }) {
    return picked(pickedChat, attachedMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
  }) {
    return picked?.call(pickedChat, attachedMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (picked != null) {
      return picked(pickedChat, attachedMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ChatPickerLoadingState value) loading,
    required TResult Function(_$ChatPickerInitialState value) initial,
    required TResult Function(_$ChatPickerPickedState value) picked,
    required TResult Function(_$ChatPickerClosedState value) closed,
  }) {
    return picked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
  }) {
    return picked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
    required TResult orElse(),
  }) {
    if (picked != null) {
      return picked(this);
    }
    return orElse();
  }
}

abstract class _$ChatPickerPickedState implements ChatPickerState {
  const factory _$ChatPickerPickedState(
          final ChatModel pickedChat, final List<Message>? attachedMessages) =
      _$_$ChatPickerPickedState;

  ChatModel get pickedChat => throw _privateConstructorUsedError;
  List<Message>? get attachedMessages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$ChatPickerPickedStateCopyWith<_$_$ChatPickerPickedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ChatPickerClosedStateCopyWith<$Res> {
  factory _$$_$ChatPickerClosedStateCopyWith(_$_$ChatPickerClosedState value,
          $Res Function(_$_$ChatPickerClosedState) then) =
      __$$_$ChatPickerClosedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$ChatPickerClosedStateCopyWithImpl<$Res>
    extends _$ChatPickerStateCopyWithImpl<$Res>
    implements _$$_$ChatPickerClosedStateCopyWith<$Res> {
  __$$_$ChatPickerClosedStateCopyWithImpl(_$_$ChatPickerClosedState _value,
      $Res Function(_$_$ChatPickerClosedState) _then)
      : super(_value, (v) => _then(v as _$_$ChatPickerClosedState));

  @override
  _$_$ChatPickerClosedState get _value =>
      super._value as _$_$ChatPickerClosedState;
}

/// @nodoc

class _$_$ChatPickerClosedState
    with DiagnosticableTreeMixin
    implements _$ChatPickerClosedState {
  const _$_$ChatPickerClosedState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatPickerState.closed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ChatPickerState.closed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ChatPickerClosedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(
            ChatModel pickedChat, List<Message>? attachedMessages)
        picked,
    required TResult Function() closed,
  }) {
    return closed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
  }) {
    return closed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(ChatModel pickedChat, List<Message>? attachedMessages)?
        picked,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ChatPickerLoadingState value) loading,
    required TResult Function(_$ChatPickerInitialState value) initial,
    required TResult Function(_$ChatPickerPickedState value) picked,
    required TResult Function(_$ChatPickerClosedState value) closed,
  }) {
    return closed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
  }) {
    return closed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ChatPickerLoadingState value)? loading,
    TResult Function(_$ChatPickerInitialState value)? initial,
    TResult Function(_$ChatPickerPickedState value)? picked,
    TResult Function(_$ChatPickerClosedState value)? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed(this);
    }
    return orElse();
  }
}

abstract class _$ChatPickerClosedState implements ChatPickerState {
  const factory _$ChatPickerClosedState() = _$_$ChatPickerClosedState;
}
