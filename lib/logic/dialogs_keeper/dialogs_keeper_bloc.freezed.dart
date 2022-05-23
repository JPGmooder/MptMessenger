// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dialogs_keeper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DialogsKeeperEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Message message, DocumentReference<Object?> chat, int unreadedCount)
        getMessage,
    required TResult Function() loadUsersDialogs,
    required TResult Function(Message message, String chatID) deleteMessage,
    required TResult Function(DocumentReference<Object?> dialogUrl) addDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        deleteDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) pinDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) unpinDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperStatesGetMessageEvent value)
        getMessage,
    required TResult Function(_$DialogsloadUsersDialogsEvent value)
        loadUsersDialogs,
    required TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)
        deleteMessage,
    required TResult Function(_$DialogsKeeperStatesAddDialogEvent value)
        addDialog,
    required TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)
        deleteDialog,
    required TResult Function(_$DialogsKeeperStatesPinDialogEvent value)
        pinDialog,
    required TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)
        unpinDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogsKeeperEventCopyWith<$Res> {
  factory $DialogsKeeperEventCopyWith(
          DialogsKeeperEvent value, $Res Function(DialogsKeeperEvent) then) =
      _$DialogsKeeperEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DialogsKeeperEventCopyWithImpl<$Res>
    implements $DialogsKeeperEventCopyWith<$Res> {
  _$DialogsKeeperEventCopyWithImpl(this._value, this._then);

  final DialogsKeeperEvent _value;
  // ignore: unused_field
  final $Res Function(DialogsKeeperEvent) _then;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesGetMessageEventCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesGetMessageEventCopyWith(
          _$_$DialogsKeeperStatesGetMessageEvent value,
          $Res Function(_$_$DialogsKeeperStatesGetMessageEvent) then) =
      __$$_$DialogsKeeperStatesGetMessageEventCopyWithImpl<$Res>;
  $Res call(
      {Message message, DocumentReference<Object?> chat, int unreadedCount});
}

/// @nodoc
class __$$_$DialogsKeeperStatesGetMessageEventCopyWithImpl<$Res>
    extends _$DialogsKeeperEventCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesGetMessageEventCopyWith<$Res> {
  __$$_$DialogsKeeperStatesGetMessageEventCopyWithImpl(
      _$_$DialogsKeeperStatesGetMessageEvent _value,
      $Res Function(_$_$DialogsKeeperStatesGetMessageEvent) _then)
      : super(
            _value, (v) => _then(v as _$_$DialogsKeeperStatesGetMessageEvent));

  @override
  _$_$DialogsKeeperStatesGetMessageEvent get _value =>
      super._value as _$_$DialogsKeeperStatesGetMessageEvent;

  @override
  $Res call({
    Object? message = freezed,
    Object? chat = freezed,
    Object? unreadedCount = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesGetMessageEvent(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      unreadedCount: unreadedCount == freezed
          ? _value.unreadedCount
          : unreadedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesGetMessageEvent
    implements _$DialogsKeeperStatesGetMessageEvent {
  const _$_$DialogsKeeperStatesGetMessageEvent(
      {required this.message, required this.chat, required this.unreadedCount});

  @override
  final Message message;
  @override
  final DocumentReference<Object?> chat;
  @override
  final int unreadedCount;

  @override
  String toString() {
    return 'DialogsKeeperEvent.getMessage(message: $message, chat: $chat, unreadedCount: $unreadedCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesGetMessageEvent &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.chat, chat) &&
            const DeepCollectionEquality()
                .equals(other.unreadedCount, unreadedCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(chat),
      const DeepCollectionEquality().hash(unreadedCount));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesGetMessageEventCopyWith<
          _$_$DialogsKeeperStatesGetMessageEvent>
      get copyWith => __$$_$DialogsKeeperStatesGetMessageEventCopyWithImpl<
          _$_$DialogsKeeperStatesGetMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Message message, DocumentReference<Object?> chat, int unreadedCount)
        getMessage,
    required TResult Function() loadUsersDialogs,
    required TResult Function(Message message, String chatID) deleteMessage,
    required TResult Function(DocumentReference<Object?> dialogUrl) addDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        deleteDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) pinDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) unpinDialog,
  }) {
    return getMessage(message, chat, unreadedCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
  }) {
    return getMessage?.call(message, chat, unreadedCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
    required TResult orElse(),
  }) {
    if (getMessage != null) {
      return getMessage(message, chat, unreadedCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperStatesGetMessageEvent value)
        getMessage,
    required TResult Function(_$DialogsloadUsersDialogsEvent value)
        loadUsersDialogs,
    required TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)
        deleteMessage,
    required TResult Function(_$DialogsKeeperStatesAddDialogEvent value)
        addDialog,
    required TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)
        deleteDialog,
    required TResult Function(_$DialogsKeeperStatesPinDialogEvent value)
        pinDialog,
    required TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)
        unpinDialog,
  }) {
    return getMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
  }) {
    return getMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
    required TResult orElse(),
  }) {
    if (getMessage != null) {
      return getMessage(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesGetMessageEvent
    implements DialogsKeeperEvent {
  const factory _$DialogsKeeperStatesGetMessageEvent(
          {required final Message message,
          required final DocumentReference<Object?> chat,
          required final int unreadedCount}) =
      _$_$DialogsKeeperStatesGetMessageEvent;

  Message get message => throw _privateConstructorUsedError;
  DocumentReference<Object?> get chat => throw _privateConstructorUsedError;
  int get unreadedCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesGetMessageEventCopyWith<
          _$_$DialogsKeeperStatesGetMessageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsloadUsersDialogsEventCopyWith<$Res> {
  factory _$$_$DialogsloadUsersDialogsEventCopyWith(
          _$_$DialogsloadUsersDialogsEvent value,
          $Res Function(_$_$DialogsloadUsersDialogsEvent) then) =
      __$$_$DialogsloadUsersDialogsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$DialogsloadUsersDialogsEventCopyWithImpl<$Res>
    extends _$DialogsKeeperEventCopyWithImpl<$Res>
    implements _$$_$DialogsloadUsersDialogsEventCopyWith<$Res> {
  __$$_$DialogsloadUsersDialogsEventCopyWithImpl(
      _$_$DialogsloadUsersDialogsEvent _value,
      $Res Function(_$_$DialogsloadUsersDialogsEvent) _then)
      : super(_value, (v) => _then(v as _$_$DialogsloadUsersDialogsEvent));

  @override
  _$_$DialogsloadUsersDialogsEvent get _value =>
      super._value as _$_$DialogsloadUsersDialogsEvent;
}

/// @nodoc

class _$_$DialogsloadUsersDialogsEvent
    implements _$DialogsloadUsersDialogsEvent {
  const _$_$DialogsloadUsersDialogsEvent();

  @override
  String toString() {
    return 'DialogsKeeperEvent.loadUsersDialogs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsloadUsersDialogsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Message message, DocumentReference<Object?> chat, int unreadedCount)
        getMessage,
    required TResult Function() loadUsersDialogs,
    required TResult Function(Message message, String chatID) deleteMessage,
    required TResult Function(DocumentReference<Object?> dialogUrl) addDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        deleteDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) pinDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) unpinDialog,
  }) {
    return loadUsersDialogs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
  }) {
    return loadUsersDialogs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
    required TResult orElse(),
  }) {
    if (loadUsersDialogs != null) {
      return loadUsersDialogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperStatesGetMessageEvent value)
        getMessage,
    required TResult Function(_$DialogsloadUsersDialogsEvent value)
        loadUsersDialogs,
    required TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)
        deleteMessage,
    required TResult Function(_$DialogsKeeperStatesAddDialogEvent value)
        addDialog,
    required TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)
        deleteDialog,
    required TResult Function(_$DialogsKeeperStatesPinDialogEvent value)
        pinDialog,
    required TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)
        unpinDialog,
  }) {
    return loadUsersDialogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
  }) {
    return loadUsersDialogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
    required TResult orElse(),
  }) {
    if (loadUsersDialogs != null) {
      return loadUsersDialogs(this);
    }
    return orElse();
  }
}

abstract class _$DialogsloadUsersDialogsEvent implements DialogsKeeperEvent {
  const factory _$DialogsloadUsersDialogsEvent() =
      _$_$DialogsloadUsersDialogsEvent;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesDeleteMessageEventCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesDeleteMessageEventCopyWith(
          _$_$DialogsKeeperStatesDeleteMessageEvent value,
          $Res Function(_$_$DialogsKeeperStatesDeleteMessageEvent) then) =
      __$$_$DialogsKeeperStatesDeleteMessageEventCopyWithImpl<$Res>;
  $Res call({Message message, String chatID});
}

/// @nodoc
class __$$_$DialogsKeeperStatesDeleteMessageEventCopyWithImpl<$Res>
    extends _$DialogsKeeperEventCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesDeleteMessageEventCopyWith<$Res> {
  __$$_$DialogsKeeperStatesDeleteMessageEventCopyWithImpl(
      _$_$DialogsKeeperStatesDeleteMessageEvent _value,
      $Res Function(_$_$DialogsKeeperStatesDeleteMessageEvent) _then)
      : super(_value,
            (v) => _then(v as _$_$DialogsKeeperStatesDeleteMessageEvent));

  @override
  _$_$DialogsKeeperStatesDeleteMessageEvent get _value =>
      super._value as _$_$DialogsKeeperStatesDeleteMessageEvent;

  @override
  $Res call({
    Object? message = freezed,
    Object? chatID = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesDeleteMessageEvent(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      chatID: chatID == freezed
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesDeleteMessageEvent
    implements _$DialogsKeeperStatesDeleteMessageEvent {
  const _$_$DialogsKeeperStatesDeleteMessageEvent(
      {required this.message, required this.chatID});

  @override
  final Message message;
  @override
  final String chatID;

  @override
  String toString() {
    return 'DialogsKeeperEvent.deleteMessage(message: $message, chatID: $chatID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesDeleteMessageEvent &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.chatID, chatID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(chatID));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesDeleteMessageEventCopyWith<
          _$_$DialogsKeeperStatesDeleteMessageEvent>
      get copyWith => __$$_$DialogsKeeperStatesDeleteMessageEventCopyWithImpl<
          _$_$DialogsKeeperStatesDeleteMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Message message, DocumentReference<Object?> chat, int unreadedCount)
        getMessage,
    required TResult Function() loadUsersDialogs,
    required TResult Function(Message message, String chatID) deleteMessage,
    required TResult Function(DocumentReference<Object?> dialogUrl) addDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        deleteDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) pinDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) unpinDialog,
  }) {
    return deleteMessage(message, chatID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
  }) {
    return deleteMessage?.call(message, chatID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(message, chatID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperStatesGetMessageEvent value)
        getMessage,
    required TResult Function(_$DialogsloadUsersDialogsEvent value)
        loadUsersDialogs,
    required TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)
        deleteMessage,
    required TResult Function(_$DialogsKeeperStatesAddDialogEvent value)
        addDialog,
    required TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)
        deleteDialog,
    required TResult Function(_$DialogsKeeperStatesPinDialogEvent value)
        pinDialog,
    required TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)
        unpinDialog,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesDeleteMessageEvent
    implements DialogsKeeperEvent {
  const factory _$DialogsKeeperStatesDeleteMessageEvent(
          {required final Message message, required final String chatID}) =
      _$_$DialogsKeeperStatesDeleteMessageEvent;

  Message get message => throw _privateConstructorUsedError;
  String get chatID => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesDeleteMessageEventCopyWith<
          _$_$DialogsKeeperStatesDeleteMessageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesAddDialogEventCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesAddDialogEventCopyWith(
          _$_$DialogsKeeperStatesAddDialogEvent value,
          $Res Function(_$_$DialogsKeeperStatesAddDialogEvent) then) =
      __$$_$DialogsKeeperStatesAddDialogEventCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> dialogUrl});
}

/// @nodoc
class __$$_$DialogsKeeperStatesAddDialogEventCopyWithImpl<$Res>
    extends _$DialogsKeeperEventCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesAddDialogEventCopyWith<$Res> {
  __$$_$DialogsKeeperStatesAddDialogEventCopyWithImpl(
      _$_$DialogsKeeperStatesAddDialogEvent _value,
      $Res Function(_$_$DialogsKeeperStatesAddDialogEvent) _then)
      : super(_value, (v) => _then(v as _$_$DialogsKeeperStatesAddDialogEvent));

  @override
  _$_$DialogsKeeperStatesAddDialogEvent get _value =>
      super._value as _$_$DialogsKeeperStatesAddDialogEvent;

  @override
  $Res call({
    Object? dialogUrl = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesAddDialogEvent(
      dialogUrl: dialogUrl == freezed
          ? _value.dialogUrl
          : dialogUrl // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesAddDialogEvent
    implements _$DialogsKeeperStatesAddDialogEvent {
  const _$_$DialogsKeeperStatesAddDialogEvent({required this.dialogUrl});

  @override
  final DocumentReference<Object?> dialogUrl;

  @override
  String toString() {
    return 'DialogsKeeperEvent.addDialog(dialogUrl: $dialogUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesAddDialogEvent &&
            const DeepCollectionEquality().equals(other.dialogUrl, dialogUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dialogUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesAddDialogEventCopyWith<
          _$_$DialogsKeeperStatesAddDialogEvent>
      get copyWith => __$$_$DialogsKeeperStatesAddDialogEventCopyWithImpl<
          _$_$DialogsKeeperStatesAddDialogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Message message, DocumentReference<Object?> chat, int unreadedCount)
        getMessage,
    required TResult Function() loadUsersDialogs,
    required TResult Function(Message message, String chatID) deleteMessage,
    required TResult Function(DocumentReference<Object?> dialogUrl) addDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        deleteDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) pinDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) unpinDialog,
  }) {
    return addDialog(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
  }) {
    return addDialog?.call(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
    required TResult orElse(),
  }) {
    if (addDialog != null) {
      return addDialog(dialogUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperStatesGetMessageEvent value)
        getMessage,
    required TResult Function(_$DialogsloadUsersDialogsEvent value)
        loadUsersDialogs,
    required TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)
        deleteMessage,
    required TResult Function(_$DialogsKeeperStatesAddDialogEvent value)
        addDialog,
    required TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)
        deleteDialog,
    required TResult Function(_$DialogsKeeperStatesPinDialogEvent value)
        pinDialog,
    required TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)
        unpinDialog,
  }) {
    return addDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
  }) {
    return addDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
    required TResult orElse(),
  }) {
    if (addDialog != null) {
      return addDialog(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesAddDialogEvent
    implements DialogsKeeperEvent {
  const factory _$DialogsKeeperStatesAddDialogEvent(
          {required final DocumentReference<Object?> dialogUrl}) =
      _$_$DialogsKeeperStatesAddDialogEvent;

  DocumentReference<Object?> get dialogUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesAddDialogEventCopyWith<
          _$_$DialogsKeeperStatesAddDialogEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesDeleteDialogEventCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesDeleteDialogEventCopyWith(
          _$_$DialogsKeeperStatesDeleteDialogEvent value,
          $Res Function(_$_$DialogsKeeperStatesDeleteDialogEvent) then) =
      __$$_$DialogsKeeperStatesDeleteDialogEventCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> dialogUrl});
}

/// @nodoc
class __$$_$DialogsKeeperStatesDeleteDialogEventCopyWithImpl<$Res>
    extends _$DialogsKeeperEventCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesDeleteDialogEventCopyWith<$Res> {
  __$$_$DialogsKeeperStatesDeleteDialogEventCopyWithImpl(
      _$_$DialogsKeeperStatesDeleteDialogEvent _value,
      $Res Function(_$_$DialogsKeeperStatesDeleteDialogEvent) _then)
      : super(_value,
            (v) => _then(v as _$_$DialogsKeeperStatesDeleteDialogEvent));

  @override
  _$_$DialogsKeeperStatesDeleteDialogEvent get _value =>
      super._value as _$_$DialogsKeeperStatesDeleteDialogEvent;

  @override
  $Res call({
    Object? dialogUrl = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesDeleteDialogEvent(
      dialogUrl: dialogUrl == freezed
          ? _value.dialogUrl
          : dialogUrl // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesDeleteDialogEvent
    implements _$DialogsKeeperStatesDeleteDialogEvent {
  const _$_$DialogsKeeperStatesDeleteDialogEvent({required this.dialogUrl});

  @override
  final DocumentReference<Object?> dialogUrl;

  @override
  String toString() {
    return 'DialogsKeeperEvent.deleteDialog(dialogUrl: $dialogUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesDeleteDialogEvent &&
            const DeepCollectionEquality().equals(other.dialogUrl, dialogUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dialogUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesDeleteDialogEventCopyWith<
          _$_$DialogsKeeperStatesDeleteDialogEvent>
      get copyWith => __$$_$DialogsKeeperStatesDeleteDialogEventCopyWithImpl<
          _$_$DialogsKeeperStatesDeleteDialogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Message message, DocumentReference<Object?> chat, int unreadedCount)
        getMessage,
    required TResult Function() loadUsersDialogs,
    required TResult Function(Message message, String chatID) deleteMessage,
    required TResult Function(DocumentReference<Object?> dialogUrl) addDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        deleteDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) pinDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) unpinDialog,
  }) {
    return deleteDialog(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
  }) {
    return deleteDialog?.call(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
    required TResult orElse(),
  }) {
    if (deleteDialog != null) {
      return deleteDialog(dialogUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperStatesGetMessageEvent value)
        getMessage,
    required TResult Function(_$DialogsloadUsersDialogsEvent value)
        loadUsersDialogs,
    required TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)
        deleteMessage,
    required TResult Function(_$DialogsKeeperStatesAddDialogEvent value)
        addDialog,
    required TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)
        deleteDialog,
    required TResult Function(_$DialogsKeeperStatesPinDialogEvent value)
        pinDialog,
    required TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)
        unpinDialog,
  }) {
    return deleteDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
  }) {
    return deleteDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
    required TResult orElse(),
  }) {
    if (deleteDialog != null) {
      return deleteDialog(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesDeleteDialogEvent
    implements DialogsKeeperEvent {
  const factory _$DialogsKeeperStatesDeleteDialogEvent(
          {required final DocumentReference<Object?> dialogUrl}) =
      _$_$DialogsKeeperStatesDeleteDialogEvent;

  DocumentReference<Object?> get dialogUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesDeleteDialogEventCopyWith<
          _$_$DialogsKeeperStatesDeleteDialogEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesPinDialogEventCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesPinDialogEventCopyWith(
          _$_$DialogsKeeperStatesPinDialogEvent value,
          $Res Function(_$_$DialogsKeeperStatesPinDialogEvent) then) =
      __$$_$DialogsKeeperStatesPinDialogEventCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> dialogUrl});
}

/// @nodoc
class __$$_$DialogsKeeperStatesPinDialogEventCopyWithImpl<$Res>
    extends _$DialogsKeeperEventCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesPinDialogEventCopyWith<$Res> {
  __$$_$DialogsKeeperStatesPinDialogEventCopyWithImpl(
      _$_$DialogsKeeperStatesPinDialogEvent _value,
      $Res Function(_$_$DialogsKeeperStatesPinDialogEvent) _then)
      : super(_value, (v) => _then(v as _$_$DialogsKeeperStatesPinDialogEvent));

  @override
  _$_$DialogsKeeperStatesPinDialogEvent get _value =>
      super._value as _$_$DialogsKeeperStatesPinDialogEvent;

  @override
  $Res call({
    Object? dialogUrl = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesPinDialogEvent(
      dialogUrl: dialogUrl == freezed
          ? _value.dialogUrl
          : dialogUrl // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesPinDialogEvent
    implements _$DialogsKeeperStatesPinDialogEvent {
  const _$_$DialogsKeeperStatesPinDialogEvent({required this.dialogUrl});

  @override
  final DocumentReference<Object?> dialogUrl;

  @override
  String toString() {
    return 'DialogsKeeperEvent.pinDialog(dialogUrl: $dialogUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesPinDialogEvent &&
            const DeepCollectionEquality().equals(other.dialogUrl, dialogUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dialogUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesPinDialogEventCopyWith<
          _$_$DialogsKeeperStatesPinDialogEvent>
      get copyWith => __$$_$DialogsKeeperStatesPinDialogEventCopyWithImpl<
          _$_$DialogsKeeperStatesPinDialogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Message message, DocumentReference<Object?> chat, int unreadedCount)
        getMessage,
    required TResult Function() loadUsersDialogs,
    required TResult Function(Message message, String chatID) deleteMessage,
    required TResult Function(DocumentReference<Object?> dialogUrl) addDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        deleteDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) pinDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) unpinDialog,
  }) {
    return pinDialog(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
  }) {
    return pinDialog?.call(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
    required TResult orElse(),
  }) {
    if (pinDialog != null) {
      return pinDialog(dialogUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperStatesGetMessageEvent value)
        getMessage,
    required TResult Function(_$DialogsloadUsersDialogsEvent value)
        loadUsersDialogs,
    required TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)
        deleteMessage,
    required TResult Function(_$DialogsKeeperStatesAddDialogEvent value)
        addDialog,
    required TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)
        deleteDialog,
    required TResult Function(_$DialogsKeeperStatesPinDialogEvent value)
        pinDialog,
    required TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)
        unpinDialog,
  }) {
    return pinDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
  }) {
    return pinDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
    required TResult orElse(),
  }) {
    if (pinDialog != null) {
      return pinDialog(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesPinDialogEvent
    implements DialogsKeeperEvent {
  const factory _$DialogsKeeperStatesPinDialogEvent(
          {required final DocumentReference<Object?> dialogUrl}) =
      _$_$DialogsKeeperStatesPinDialogEvent;

  DocumentReference<Object?> get dialogUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesPinDialogEventCopyWith<
          _$_$DialogsKeeperStatesPinDialogEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesunPinDialogEventCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesunPinDialogEventCopyWith(
          _$_$DialogsKeeperStatesunPinDialogEvent value,
          $Res Function(_$_$DialogsKeeperStatesunPinDialogEvent) then) =
      __$$_$DialogsKeeperStatesunPinDialogEventCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> dialogUrl});
}

/// @nodoc
class __$$_$DialogsKeeperStatesunPinDialogEventCopyWithImpl<$Res>
    extends _$DialogsKeeperEventCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesunPinDialogEventCopyWith<$Res> {
  __$$_$DialogsKeeperStatesunPinDialogEventCopyWithImpl(
      _$_$DialogsKeeperStatesunPinDialogEvent _value,
      $Res Function(_$_$DialogsKeeperStatesunPinDialogEvent) _then)
      : super(
            _value, (v) => _then(v as _$_$DialogsKeeperStatesunPinDialogEvent));

  @override
  _$_$DialogsKeeperStatesunPinDialogEvent get _value =>
      super._value as _$_$DialogsKeeperStatesunPinDialogEvent;

  @override
  $Res call({
    Object? dialogUrl = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesunPinDialogEvent(
      dialogUrl: dialogUrl == freezed
          ? _value.dialogUrl
          : dialogUrl // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesunPinDialogEvent
    implements _$DialogsKeeperStatesunPinDialogEvent {
  const _$_$DialogsKeeperStatesunPinDialogEvent({required this.dialogUrl});

  @override
  final DocumentReference<Object?> dialogUrl;

  @override
  String toString() {
    return 'DialogsKeeperEvent.unpinDialog(dialogUrl: $dialogUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesunPinDialogEvent &&
            const DeepCollectionEquality().equals(other.dialogUrl, dialogUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dialogUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesunPinDialogEventCopyWith<
          _$_$DialogsKeeperStatesunPinDialogEvent>
      get copyWith => __$$_$DialogsKeeperStatesunPinDialogEventCopyWithImpl<
          _$_$DialogsKeeperStatesunPinDialogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Message message, DocumentReference<Object?> chat, int unreadedCount)
        getMessage,
    required TResult Function() loadUsersDialogs,
    required TResult Function(Message message, String chatID) deleteMessage,
    required TResult Function(DocumentReference<Object?> dialogUrl) addDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        deleteDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) pinDialog,
    required TResult Function(DocumentReference<Object?> dialogUrl) unpinDialog,
  }) {
    return unpinDialog(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
  }) {
    return unpinDialog?.call(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message, DocumentReference<Object?> chat,
            int unreadedCount)?
        getMessage,
    TResult Function()? loadUsersDialogs,
    TResult Function(Message message, String chatID)? deleteMessage,
    TResult Function(DocumentReference<Object?> dialogUrl)? addDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? deleteDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? pinDialog,
    TResult Function(DocumentReference<Object?> dialogUrl)? unpinDialog,
    required TResult orElse(),
  }) {
    if (unpinDialog != null) {
      return unpinDialog(dialogUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperStatesGetMessageEvent value)
        getMessage,
    required TResult Function(_$DialogsloadUsersDialogsEvent value)
        loadUsersDialogs,
    required TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)
        deleteMessage,
    required TResult Function(_$DialogsKeeperStatesAddDialogEvent value)
        addDialog,
    required TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)
        deleteDialog,
    required TResult Function(_$DialogsKeeperStatesPinDialogEvent value)
        pinDialog,
    required TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)
        unpinDialog,
  }) {
    return unpinDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
  }) {
    return unpinDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperStatesGetMessageEvent value)? getMessage,
    TResult Function(_$DialogsloadUsersDialogsEvent value)? loadUsersDialogs,
    TResult Function(_$DialogsKeeperStatesDeleteMessageEvent value)?
        deleteMessage,
    TResult Function(_$DialogsKeeperStatesAddDialogEvent value)? addDialog,
    TResult Function(_$DialogsKeeperStatesDeleteDialogEvent value)?
        deleteDialog,
    TResult Function(_$DialogsKeeperStatesPinDialogEvent value)? pinDialog,
    TResult Function(_$DialogsKeeperStatesunPinDialogEvent value)? unpinDialog,
    required TResult orElse(),
  }) {
    if (unpinDialog != null) {
      return unpinDialog(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesunPinDialogEvent
    implements DialogsKeeperEvent {
  const factory _$DialogsKeeperStatesunPinDialogEvent(
          {required final DocumentReference<Object?> dialogUrl}) =
      _$_$DialogsKeeperStatesunPinDialogEvent;

  DocumentReference<Object?> get dialogUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesunPinDialogEventCopyWith<
          _$_$DialogsKeeperStatesunPinDialogEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DialogsKeeperState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogsKeeperStateCopyWith<$Res> {
  factory $DialogsKeeperStateCopyWith(
          DialogsKeeperState value, $Res Function(DialogsKeeperState) then) =
      _$DialogsKeeperStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DialogsKeeperStateCopyWithImpl<$Res>
    implements $DialogsKeeperStateCopyWith<$Res> {
  _$DialogsKeeperStateCopyWithImpl(this._value, this._then);

  final DialogsKeeperState _value;
  // ignore: unused_field
  final $Res Function(DialogsKeeperState) _then;
}

/// @nodoc
abstract class _$$_$DialogsKeeperMessageInitialStateCopyWith<$Res> {
  factory _$$_$DialogsKeeperMessageInitialStateCopyWith(
          _$_$DialogsKeeperMessageInitialState value,
          $Res Function(_$_$DialogsKeeperMessageInitialState) then) =
      __$$_$DialogsKeeperMessageInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$DialogsKeeperMessageInitialStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperMessageInitialStateCopyWith<$Res> {
  __$$_$DialogsKeeperMessageInitialStateCopyWithImpl(
      _$_$DialogsKeeperMessageInitialState _value,
      $Res Function(_$_$DialogsKeeperMessageInitialState) _then)
      : super(_value, (v) => _then(v as _$_$DialogsKeeperMessageInitialState));

  @override
  _$_$DialogsKeeperMessageInitialState get _value =>
      super._value as _$_$DialogsKeeperMessageInitialState;
}

/// @nodoc

class _$_$DialogsKeeperMessageInitialState
    implements _$DialogsKeeperMessageInitialState {
  const _$_$DialogsKeeperMessageInitialState();

  @override
  String toString() {
    return 'DialogsKeeperState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperMessageInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperMessageInitialState
    implements DialogsKeeperState {
  const factory _$DialogsKeeperMessageInitialState() =
      _$_$DialogsKeeperMessageInitialState;
}

/// @nodoc
abstract class _$$_$DialogsKeeperMessageRecievedStateCopyWith<$Res> {
  factory _$$_$DialogsKeeperMessageRecievedStateCopyWith(
          _$_$DialogsKeeperMessageRecievedState value,
          $Res Function(_$_$DialogsKeeperMessageRecievedState) then) =
      __$$_$DialogsKeeperMessageRecievedStateCopyWithImpl<$Res>;
  $Res call(
      {Message message,
      AnotherUser sender,
      int unreadedCount,
      DocumentReference<Object?> chat});
}

/// @nodoc
class __$$_$DialogsKeeperMessageRecievedStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperMessageRecievedStateCopyWith<$Res> {
  __$$_$DialogsKeeperMessageRecievedStateCopyWithImpl(
      _$_$DialogsKeeperMessageRecievedState _value,
      $Res Function(_$_$DialogsKeeperMessageRecievedState) _then)
      : super(_value, (v) => _then(v as _$_$DialogsKeeperMessageRecievedState));

  @override
  _$_$DialogsKeeperMessageRecievedState get _value =>
      super._value as _$_$DialogsKeeperMessageRecievedState;

  @override
  $Res call({
    Object? message = freezed,
    Object? sender = freezed,
    Object? unreadedCount = freezed,
    Object? chat = freezed,
  }) {
    return _then(_$_$DialogsKeeperMessageRecievedState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as AnotherUser,
      unreadedCount: unreadedCount == freezed
          ? _value.unreadedCount
          : unreadedCount // ignore: cast_nullable_to_non_nullable
              as int,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperMessageRecievedState
    implements _$DialogsKeeperMessageRecievedState {
  const _$_$DialogsKeeperMessageRecievedState(
      {required this.message,
      required this.sender,
      required this.unreadedCount,
      required this.chat});

  @override
  final Message message;
  @override
  final AnotherUser sender;
  @override
  final int unreadedCount;
  @override
  final DocumentReference<Object?> chat;

  @override
  String toString() {
    return 'DialogsKeeperState.messageRecieved(message: $message, sender: $sender, unreadedCount: $unreadedCount, chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperMessageRecievedState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality()
                .equals(other.unreadedCount, unreadedCount) &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(unreadedCount),
      const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperMessageRecievedStateCopyWith<
          _$_$DialogsKeeperMessageRecievedState>
      get copyWith => __$$_$DialogsKeeperMessageRecievedStateCopyWithImpl<
          _$_$DialogsKeeperMessageRecievedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return messageRecieved(message, sender, unreadedCount, chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return messageRecieved?.call(message, sender, unreadedCount, chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (messageRecieved != null) {
      return messageRecieved(message, sender, unreadedCount, chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return messageRecieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return messageRecieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (messageRecieved != null) {
      return messageRecieved(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperMessageRecievedState
    implements DialogsKeeperState {
  const factory _$DialogsKeeperMessageRecievedState(
          {required final Message message,
          required final AnotherUser sender,
          required final int unreadedCount,
          required final DocumentReference<Object?> chat}) =
      _$_$DialogsKeeperMessageRecievedState;

  Message get message => throw _privateConstructorUsedError;
  AnotherUser get sender => throw _privateConstructorUsedError;
  int get unreadedCount => throw _privateConstructorUsedError;
  DocumentReference<Object?> get chat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperMessageRecievedStateCopyWith<
          _$_$DialogsKeeperMessageRecievedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperMessageReadedStateCopyWith<$Res> {
  factory _$$_$DialogsKeeperMessageReadedStateCopyWith(
          _$_$DialogsKeeperMessageReadedState value,
          $Res Function(_$_$DialogsKeeperMessageReadedState) then) =
      __$$_$DialogsKeeperMessageReadedStateCopyWithImpl<$Res>;
  $Res call({String chatID});
}

/// @nodoc
class __$$_$DialogsKeeperMessageReadedStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperMessageReadedStateCopyWith<$Res> {
  __$$_$DialogsKeeperMessageReadedStateCopyWithImpl(
      _$_$DialogsKeeperMessageReadedState _value,
      $Res Function(_$_$DialogsKeeperMessageReadedState) _then)
      : super(_value, (v) => _then(v as _$_$DialogsKeeperMessageReadedState));

  @override
  _$_$DialogsKeeperMessageReadedState get _value =>
      super._value as _$_$DialogsKeeperMessageReadedState;

  @override
  $Res call({
    Object? chatID = freezed,
  }) {
    return _then(_$_$DialogsKeeperMessageReadedState(
      chatID: chatID == freezed
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperMessageReadedState
    implements _$DialogsKeeperMessageReadedState {
  const _$_$DialogsKeeperMessageReadedState({required this.chatID});

  @override
  final String chatID;

  @override
  String toString() {
    return 'DialogsKeeperState.messageReaded(chatID: $chatID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperMessageReadedState &&
            const DeepCollectionEquality().equals(other.chatID, chatID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatID));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperMessageReadedStateCopyWith<
          _$_$DialogsKeeperMessageReadedState>
      get copyWith => __$$_$DialogsKeeperMessageReadedStateCopyWithImpl<
          _$_$DialogsKeeperMessageReadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return messageReaded(chatID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return messageReaded?.call(chatID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (messageReaded != null) {
      return messageReaded(chatID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return messageReaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return messageReaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (messageReaded != null) {
      return messageReaded(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperMessageReadedState implements DialogsKeeperState {
  const factory _$DialogsKeeperMessageReadedState(
      {required final String chatID}) = _$_$DialogsKeeperMessageReadedState;

  String get chatID => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperMessageReadedStateCopyWith<
          _$_$DialogsKeeperMessageReadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsLoadingStateCopyWith<$Res> {
  factory _$$_$DialogsLoadingStateCopyWith(_$_$DialogsLoadingState value,
          $Res Function(_$_$DialogsLoadingState) then) =
      __$$_$DialogsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$DialogsLoadingStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsLoadingStateCopyWith<$Res> {
  __$$_$DialogsLoadingStateCopyWithImpl(_$_$DialogsLoadingState _value,
      $Res Function(_$_$DialogsLoadingState) _then)
      : super(_value, (v) => _then(v as _$_$DialogsLoadingState));

  @override
  _$_$DialogsLoadingState get _value => super._value as _$_$DialogsLoadingState;
}

/// @nodoc

class _$_$DialogsLoadingState implements _$DialogsLoadingState {
  const _$_$DialogsLoadingState();

  @override
  String toString() {
    return 'DialogsKeeperState.dialogsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$DialogsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return dialogsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return dialogsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogsLoading != null) {
      return dialogsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return dialogsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return dialogsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogsLoading != null) {
      return dialogsLoading(this);
    }
    return orElse();
  }
}

abstract class _$DialogsLoadingState implements DialogsKeeperState {
  const factory _$DialogsLoadingState() = _$_$DialogsLoadingState;
}

/// @nodoc
abstract class _$$_$DialogsDialogsLoadedStateCopyWith<$Res> {
  factory _$$_$DialogsDialogsLoadedStateCopyWith(
          _$_$DialogsDialogsLoadedState value,
          $Res Function(_$_$DialogsDialogsLoadedState) then) =
      __$$_$DialogsDialogsLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>?> dialogs});
}

/// @nodoc
class __$$_$DialogsDialogsLoadedStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsDialogsLoadedStateCopyWith<$Res> {
  __$$_$DialogsDialogsLoadedStateCopyWithImpl(
      _$_$DialogsDialogsLoadedState _value,
      $Res Function(_$_$DialogsDialogsLoadedState) _then)
      : super(_value, (v) => _then(v as _$_$DialogsDialogsLoadedState));

  @override
  _$_$DialogsDialogsLoadedState get _value =>
      super._value as _$_$DialogsDialogsLoadedState;

  @override
  $Res call({
    Object? dialogs = freezed,
  }) {
    return _then(_$_$DialogsDialogsLoadedState(
      dialogs: dialogs == freezed
          ? _value._dialogs
          : dialogs // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsDialogsLoadedState implements _$DialogsDialogsLoadedState {
  const _$_$DialogsDialogsLoadedState(
      {required final List<Map<String, dynamic>?> dialogs})
      : _dialogs = dialogs;

  final List<Map<String, dynamic>?> _dialogs;
  @override
  List<Map<String, dynamic>?> get dialogs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dialogs);
  }

  @override
  String toString() {
    return 'DialogsKeeperState.dialogsLoaded(dialogs: $dialogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsDialogsLoadedState &&
            const DeepCollectionEquality().equals(other._dialogs, _dialogs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dialogs));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsDialogsLoadedStateCopyWith<_$_$DialogsDialogsLoadedState>
      get copyWith => __$$_$DialogsDialogsLoadedStateCopyWithImpl<
          _$_$DialogsDialogsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return dialogsLoaded(dialogs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return dialogsLoaded?.call(dialogs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogsLoaded != null) {
      return dialogsLoaded(dialogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return dialogsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return dialogsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogsLoaded != null) {
      return dialogsLoaded(this);
    }
    return orElse();
  }
}

abstract class _$DialogsDialogsLoadedState implements DialogsKeeperState {
  const factory _$DialogsDialogsLoadedState(
          {required final List<Map<String, dynamic>?> dialogs}) =
      _$_$DialogsDialogsLoadedState;

  List<Map<String, dynamic>?> get dialogs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsDialogsLoadedStateCopyWith<_$_$DialogsDialogsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesDialogAddedStateCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesDialogAddedStateCopyWith(
          _$_$DialogsKeeperStatesDialogAddedState value,
          $Res Function(_$_$DialogsKeeperStatesDialogAddedState) then) =
      __$$_$DialogsKeeperStatesDialogAddedStateCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> dialogUrl});
}

/// @nodoc
class __$$_$DialogsKeeperStatesDialogAddedStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesDialogAddedStateCopyWith<$Res> {
  __$$_$DialogsKeeperStatesDialogAddedStateCopyWithImpl(
      _$_$DialogsKeeperStatesDialogAddedState _value,
      $Res Function(_$_$DialogsKeeperStatesDialogAddedState) _then)
      : super(
            _value, (v) => _then(v as _$_$DialogsKeeperStatesDialogAddedState));

  @override
  _$_$DialogsKeeperStatesDialogAddedState get _value =>
      super._value as _$_$DialogsKeeperStatesDialogAddedState;

  @override
  $Res call({
    Object? dialogUrl = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesDialogAddedState(
      dialogUrl: dialogUrl == freezed
          ? _value.dialogUrl
          : dialogUrl // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesDialogAddedState
    implements _$DialogsKeeperStatesDialogAddedState {
  const _$_$DialogsKeeperStatesDialogAddedState({required this.dialogUrl});

  @override
  final DocumentReference<Object?> dialogUrl;

  @override
  String toString() {
    return 'DialogsKeeperState.dialogAdded(dialogUrl: $dialogUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesDialogAddedState &&
            const DeepCollectionEquality().equals(other.dialogUrl, dialogUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dialogUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesDialogAddedStateCopyWith<
          _$_$DialogsKeeperStatesDialogAddedState>
      get copyWith => __$$_$DialogsKeeperStatesDialogAddedStateCopyWithImpl<
          _$_$DialogsKeeperStatesDialogAddedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return dialogAdded(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return dialogAdded?.call(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogAdded != null) {
      return dialogAdded(dialogUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return dialogAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return dialogAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogAdded != null) {
      return dialogAdded(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesDialogAddedState
    implements DialogsKeeperState {
  const factory _$DialogsKeeperStatesDialogAddedState(
          {required final DocumentReference<Object?> dialogUrl}) =
      _$_$DialogsKeeperStatesDialogAddedState;

  DocumentReference<Object?> get dialogUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesDialogAddedStateCopyWith<
          _$_$DialogsKeeperStatesDialogAddedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesDialogDeletedStateCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesDialogDeletedStateCopyWith(
          _$_$DialogsKeeperStatesDialogDeletedState value,
          $Res Function(_$_$DialogsKeeperStatesDialogDeletedState) then) =
      __$$_$DialogsKeeperStatesDialogDeletedStateCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> dialogUrl});
}

/// @nodoc
class __$$_$DialogsKeeperStatesDialogDeletedStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesDialogDeletedStateCopyWith<$Res> {
  __$$_$DialogsKeeperStatesDialogDeletedStateCopyWithImpl(
      _$_$DialogsKeeperStatesDialogDeletedState _value,
      $Res Function(_$_$DialogsKeeperStatesDialogDeletedState) _then)
      : super(_value,
            (v) => _then(v as _$_$DialogsKeeperStatesDialogDeletedState));

  @override
  _$_$DialogsKeeperStatesDialogDeletedState get _value =>
      super._value as _$_$DialogsKeeperStatesDialogDeletedState;

  @override
  $Res call({
    Object? dialogUrl = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesDialogDeletedState(
      dialogUrl: dialogUrl == freezed
          ? _value.dialogUrl
          : dialogUrl // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesDialogDeletedState
    implements _$DialogsKeeperStatesDialogDeletedState {
  const _$_$DialogsKeeperStatesDialogDeletedState({required this.dialogUrl});

  @override
  final DocumentReference<Object?> dialogUrl;

  @override
  String toString() {
    return 'DialogsKeeperState.dialogDeleted(dialogUrl: $dialogUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesDialogDeletedState &&
            const DeepCollectionEquality().equals(other.dialogUrl, dialogUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dialogUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesDialogDeletedStateCopyWith<
          _$_$DialogsKeeperStatesDialogDeletedState>
      get copyWith => __$$_$DialogsKeeperStatesDialogDeletedStateCopyWithImpl<
          _$_$DialogsKeeperStatesDialogDeletedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return dialogDeleted(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return dialogDeleted?.call(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogDeleted != null) {
      return dialogDeleted(dialogUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return dialogDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return dialogDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogDeleted != null) {
      return dialogDeleted(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesDialogDeletedState
    implements DialogsKeeperState {
  const factory _$DialogsKeeperStatesDialogDeletedState(
          {required final DocumentReference<Object?> dialogUrl}) =
      _$_$DialogsKeeperStatesDialogDeletedState;

  DocumentReference<Object?> get dialogUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesDialogDeletedStateCopyWith<
          _$_$DialogsKeeperStatesDialogDeletedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesDialogPinnedStateCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesDialogPinnedStateCopyWith(
          _$_$DialogsKeeperStatesDialogPinnedState value,
          $Res Function(_$_$DialogsKeeperStatesDialogPinnedState) then) =
      __$$_$DialogsKeeperStatesDialogPinnedStateCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> dialogUrl});
}

/// @nodoc
class __$$_$DialogsKeeperStatesDialogPinnedStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesDialogPinnedStateCopyWith<$Res> {
  __$$_$DialogsKeeperStatesDialogPinnedStateCopyWithImpl(
      _$_$DialogsKeeperStatesDialogPinnedState _value,
      $Res Function(_$_$DialogsKeeperStatesDialogPinnedState) _then)
      : super(_value,
            (v) => _then(v as _$_$DialogsKeeperStatesDialogPinnedState));

  @override
  _$_$DialogsKeeperStatesDialogPinnedState get _value =>
      super._value as _$_$DialogsKeeperStatesDialogPinnedState;

  @override
  $Res call({
    Object? dialogUrl = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesDialogPinnedState(
      dialogUrl: dialogUrl == freezed
          ? _value.dialogUrl
          : dialogUrl // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesDialogPinnedState
    implements _$DialogsKeeperStatesDialogPinnedState {
  const _$_$DialogsKeeperStatesDialogPinnedState({required this.dialogUrl});

  @override
  final DocumentReference<Object?> dialogUrl;

  @override
  String toString() {
    return 'DialogsKeeperState.dialogPinned(dialogUrl: $dialogUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesDialogPinnedState &&
            const DeepCollectionEquality().equals(other.dialogUrl, dialogUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dialogUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesDialogPinnedStateCopyWith<
          _$_$DialogsKeeperStatesDialogPinnedState>
      get copyWith => __$$_$DialogsKeeperStatesDialogPinnedStateCopyWithImpl<
          _$_$DialogsKeeperStatesDialogPinnedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return dialogPinned(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return dialogPinned?.call(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogPinned != null) {
      return dialogPinned(dialogUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return dialogPinned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return dialogPinned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogPinned != null) {
      return dialogPinned(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesDialogPinnedState
    implements DialogsKeeperState {
  const factory _$DialogsKeeperStatesDialogPinnedState(
          {required final DocumentReference<Object?> dialogUrl}) =
      _$_$DialogsKeeperStatesDialogPinnedState;

  DocumentReference<Object?> get dialogUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesDialogPinnedStateCopyWith<
          _$_$DialogsKeeperStatesDialogPinnedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWith<$Res> {
  factory _$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWith(
          _$_$DialogsKeeperStatesDialogUnpinnedState value,
          $Res Function(_$_$DialogsKeeperStatesDialogUnpinnedState) then) =
      __$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> dialogUrl});
}

/// @nodoc
class __$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWithImpl<$Res>
    extends _$DialogsKeeperStateCopyWithImpl<$Res>
    implements _$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWith<$Res> {
  __$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWithImpl(
      _$_$DialogsKeeperStatesDialogUnpinnedState _value,
      $Res Function(_$_$DialogsKeeperStatesDialogUnpinnedState) _then)
      : super(_value,
            (v) => _then(v as _$_$DialogsKeeperStatesDialogUnpinnedState));

  @override
  _$_$DialogsKeeperStatesDialogUnpinnedState get _value =>
      super._value as _$_$DialogsKeeperStatesDialogUnpinnedState;

  @override
  $Res call({
    Object? dialogUrl = freezed,
  }) {
    return _then(_$_$DialogsKeeperStatesDialogUnpinnedState(
      dialogUrl: dialogUrl == freezed
          ? _value.dialogUrl
          : dialogUrl // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$DialogsKeeperStatesDialogUnpinnedState
    implements _$DialogsKeeperStatesDialogUnpinnedState {
  const _$_$DialogsKeeperStatesDialogUnpinnedState({required this.dialogUrl});

  @override
  final DocumentReference<Object?> dialogUrl;

  @override
  String toString() {
    return 'DialogsKeeperState.dialogUnpinned(dialogUrl: $dialogUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$DialogsKeeperStatesDialogUnpinnedState &&
            const DeepCollectionEquality().equals(other.dialogUrl, dialogUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dialogUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWith<
          _$_$DialogsKeeperStatesDialogUnpinnedState>
      get copyWith => __$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWithImpl<
          _$_$DialogsKeeperStatesDialogUnpinnedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Message message, AnotherUser sender,
            int unreadedCount, DocumentReference<Object?> chat)
        messageRecieved,
    required TResult Function(String chatID) messageReaded,
    required TResult Function() dialogsLoading,
    required TResult Function(List<Map<String, dynamic>?> dialogs)
        dialogsLoaded,
    required TResult Function(DocumentReference<Object?> dialogUrl) dialogAdded,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogDeleted,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogPinned,
    required TResult Function(DocumentReference<Object?> dialogUrl)
        dialogUnpinned,
  }) {
    return dialogUnpinned(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
  }) {
    return dialogUnpinned?.call(dialogUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Message message, AnotherUser sender, int unreadedCount,
            DocumentReference<Object?> chat)?
        messageRecieved,
    TResult Function(String chatID)? messageReaded,
    TResult Function()? dialogsLoading,
    TResult Function(List<Map<String, dynamic>?> dialogs)? dialogsLoaded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogAdded,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogDeleted,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogPinned,
    TResult Function(DocumentReference<Object?> dialogUrl)? dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogUnpinned != null) {
      return dialogUnpinned(dialogUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$DialogsKeeperMessageInitialState value)
        initialState,
    required TResult Function(_$DialogsKeeperMessageRecievedState value)
        messageRecieved,
    required TResult Function(_$DialogsKeeperMessageReadedState value)
        messageReaded,
    required TResult Function(_$DialogsLoadingState value) dialogsLoading,
    required TResult Function(_$DialogsDialogsLoadedState value) dialogsLoaded,
    required TResult Function(_$DialogsKeeperStatesDialogAddedState value)
        dialogAdded,
    required TResult Function(_$DialogsKeeperStatesDialogDeletedState value)
        dialogDeleted,
    required TResult Function(_$DialogsKeeperStatesDialogPinnedState value)
        dialogPinned,
    required TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)
        dialogUnpinned,
  }) {
    return dialogUnpinned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
  }) {
    return dialogUnpinned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$DialogsKeeperMessageInitialState value)? initialState,
    TResult Function(_$DialogsKeeperMessageRecievedState value)?
        messageRecieved,
    TResult Function(_$DialogsKeeperMessageReadedState value)? messageReaded,
    TResult Function(_$DialogsLoadingState value)? dialogsLoading,
    TResult Function(_$DialogsDialogsLoadedState value)? dialogsLoaded,
    TResult Function(_$DialogsKeeperStatesDialogAddedState value)? dialogAdded,
    TResult Function(_$DialogsKeeperStatesDialogDeletedState value)?
        dialogDeleted,
    TResult Function(_$DialogsKeeperStatesDialogPinnedState value)?
        dialogPinned,
    TResult Function(_$DialogsKeeperStatesDialogUnpinnedState value)?
        dialogUnpinned,
    required TResult orElse(),
  }) {
    if (dialogUnpinned != null) {
      return dialogUnpinned(this);
    }
    return orElse();
  }
}

abstract class _$DialogsKeeperStatesDialogUnpinnedState
    implements DialogsKeeperState {
  const factory _$DialogsKeeperStatesDialogUnpinnedState(
          {required final DocumentReference<Object?> dialogUrl}) =
      _$_$DialogsKeeperStatesDialogUnpinnedState;

  DocumentReference<Object?> get dialogUrl =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$DialogsKeeperStatesDialogUnpinnedStateCopyWith<
          _$_$DialogsKeeperStatesDialogUnpinnedState>
      get copyWith => throw _privateConstructorUsedError;
}
