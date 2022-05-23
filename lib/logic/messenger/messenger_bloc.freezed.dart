// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messenger_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessengerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)
        sendMessage,
    required TResult Function() startRecieveMessages,
    required TResult Function(String url, String path) downloadAttachment,
    required TResult Function(bool isTyping) typing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerSendMessageEvent value) sendMessage,
    required TResult Function(_$MessengerStartRecieveMessagesEventFixed value)
        startRecieveMessages,
    required TResult Function(_$MessengerDownloadAttachmentEvents value)
        downloadAttachment,
    required TResult Function(_$MessengerTypingEvent value) typing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessengerEventCopyWith<$Res> {
  factory $MessengerEventCopyWith(
          MessengerEvent value, $Res Function(MessengerEvent) then) =
      _$MessengerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessengerEventCopyWithImpl<$Res>
    implements $MessengerEventCopyWith<$Res> {
  _$MessengerEventCopyWithImpl(this._value, this._then);

  final MessengerEvent _value;
  // ignore: unused_field
  final $Res Function(MessengerEvent) _then;
}

/// @nodoc
abstract class _$$_$MessengerSendMessageEventCopyWith<$Res> {
  factory _$$_$MessengerSendMessageEventCopyWith(
          _$_$MessengerSendMessageEvent value,
          $Res Function(_$_$MessengerSendMessageEvent) then) =
      __$$_$MessengerSendMessageEventCopyWithImpl<$Res>;
  $Res call(
      {String? message,
      List<PlatformFile>? attachements,
      messageTypes messageType,
      List<Message> attachetMessages,
      DocumentReference<Object?> chat});
}

/// @nodoc
class __$$_$MessengerSendMessageEventCopyWithImpl<$Res>
    extends _$MessengerEventCopyWithImpl<$Res>
    implements _$$_$MessengerSendMessageEventCopyWith<$Res> {
  __$$_$MessengerSendMessageEventCopyWithImpl(
      _$_$MessengerSendMessageEvent _value,
      $Res Function(_$_$MessengerSendMessageEvent) _then)
      : super(_value, (v) => _then(v as _$_$MessengerSendMessageEvent));

  @override
  _$_$MessengerSendMessageEvent get _value =>
      super._value as _$_$MessengerSendMessageEvent;

  @override
  $Res call({
    Object? message = freezed,
    Object? attachements = freezed,
    Object? messageType = freezed,
    Object? attachetMessages = freezed,
    Object? chat = freezed,
  }) {
    return _then(_$_$MessengerSendMessageEvent(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      attachements == freezed
          ? _value._attachements
          : attachements // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>?,
      messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as messageTypes,
      attachetMessages == freezed
          ? _value._attachetMessages
          : attachetMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$MessengerSendMessageEvent implements _$MessengerSendMessageEvent {
  const _$_$MessengerSendMessageEvent(
      this.message,
      final List<PlatformFile>? attachements,
      this.messageType,
      final List<Message> attachetMessages,
      this.chat)
      : _attachements = attachements,
        _attachetMessages = attachetMessages;

  @override
  final String? message;
  final List<PlatformFile>? _attachements;
  @override
  List<PlatformFile>? get attachements {
    final value = _attachements;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final messageTypes messageType;
  final List<Message> _attachetMessages;
  @override
  List<Message> get attachetMessages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachetMessages);
  }

  @override
  final DocumentReference<Object?> chat;

  @override
  String toString() {
    return 'MessengerEvent.sendMessage(message: $message, attachements: $attachements, messageType: $messageType, attachetMessages: $attachetMessages, chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerSendMessageEvent &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._attachements, _attachements) &&
            const DeepCollectionEquality()
                .equals(other.messageType, messageType) &&
            const DeepCollectionEquality()
                .equals(other._attachetMessages, _attachetMessages) &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_attachements),
      const DeepCollectionEquality().hash(messageType),
      const DeepCollectionEquality().hash(_attachetMessages),
      const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerSendMessageEventCopyWith<_$_$MessengerSendMessageEvent>
      get copyWith => __$$_$MessengerSendMessageEventCopyWithImpl<
          _$_$MessengerSendMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)
        sendMessage,
    required TResult Function() startRecieveMessages,
    required TResult Function(String url, String path) downloadAttachment,
    required TResult Function(bool isTyping) typing,
  }) {
    return sendMessage(
        message, attachements, messageType, attachetMessages, chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
  }) {
    return sendMessage?.call(
        message, attachements, messageType, attachetMessages, chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(
          message, attachements, messageType, attachetMessages, chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerSendMessageEvent value) sendMessage,
    required TResult Function(_$MessengerStartRecieveMessagesEventFixed value)
        startRecieveMessages,
    required TResult Function(_$MessengerDownloadAttachmentEvents value)
        downloadAttachment,
    required TResult Function(_$MessengerTypingEvent value) typing,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _$MessengerSendMessageEvent implements MessengerEvent {
  const factory _$MessengerSendMessageEvent(
      final String? message,
      final List<PlatformFile>? attachements,
      final messageTypes messageType,
      final List<Message> attachetMessages,
      final DocumentReference<Object?> chat) = _$_$MessengerSendMessageEvent;

  String? get message => throw _privateConstructorUsedError;
  List<PlatformFile>? get attachements => throw _privateConstructorUsedError;
  messageTypes get messageType => throw _privateConstructorUsedError;
  List<Message> get attachetMessages => throw _privateConstructorUsedError;
  DocumentReference<Object?> get chat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerSendMessageEventCopyWith<_$_$MessengerSendMessageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerStartRecieveMessagesEventFixedCopyWith<$Res> {
  factory _$$_$MessengerStartRecieveMessagesEventFixedCopyWith(
          _$_$MessengerStartRecieveMessagesEventFixed value,
          $Res Function(_$_$MessengerStartRecieveMessagesEventFixed) then) =
      __$$_$MessengerStartRecieveMessagesEventFixedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$MessengerStartRecieveMessagesEventFixedCopyWithImpl<$Res>
    extends _$MessengerEventCopyWithImpl<$Res>
    implements _$$_$MessengerStartRecieveMessagesEventFixedCopyWith<$Res> {
  __$$_$MessengerStartRecieveMessagesEventFixedCopyWithImpl(
      _$_$MessengerStartRecieveMessagesEventFixed _value,
      $Res Function(_$_$MessengerStartRecieveMessagesEventFixed) _then)
      : super(_value,
            (v) => _then(v as _$_$MessengerStartRecieveMessagesEventFixed));

  @override
  _$_$MessengerStartRecieveMessagesEventFixed get _value =>
      super._value as _$_$MessengerStartRecieveMessagesEventFixed;
}

/// @nodoc

class _$_$MessengerStartRecieveMessagesEventFixed
    implements _$MessengerStartRecieveMessagesEventFixed {
  const _$_$MessengerStartRecieveMessagesEventFixed();

  @override
  String toString() {
    return 'MessengerEvent.startRecieveMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerStartRecieveMessagesEventFixed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)
        sendMessage,
    required TResult Function() startRecieveMessages,
    required TResult Function(String url, String path) downloadAttachment,
    required TResult Function(bool isTyping) typing,
  }) {
    return startRecieveMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
  }) {
    return startRecieveMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
    required TResult orElse(),
  }) {
    if (startRecieveMessages != null) {
      return startRecieveMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerSendMessageEvent value) sendMessage,
    required TResult Function(_$MessengerStartRecieveMessagesEventFixed value)
        startRecieveMessages,
    required TResult Function(_$MessengerDownloadAttachmentEvents value)
        downloadAttachment,
    required TResult Function(_$MessengerTypingEvent value) typing,
  }) {
    return startRecieveMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
  }) {
    return startRecieveMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
    required TResult orElse(),
  }) {
    if (startRecieveMessages != null) {
      return startRecieveMessages(this);
    }
    return orElse();
  }
}

abstract class _$MessengerStartRecieveMessagesEventFixed
    implements MessengerEvent {
  const factory _$MessengerStartRecieveMessagesEventFixed() =
      _$_$MessengerStartRecieveMessagesEventFixed;
}

/// @nodoc
abstract class _$$_$MessengerDownloadAttachmentEventsCopyWith<$Res> {
  factory _$$_$MessengerDownloadAttachmentEventsCopyWith(
          _$_$MessengerDownloadAttachmentEvents value,
          $Res Function(_$_$MessengerDownloadAttachmentEvents) then) =
      __$$_$MessengerDownloadAttachmentEventsCopyWithImpl<$Res>;
  $Res call({String url, String path});
}

/// @nodoc
class __$$_$MessengerDownloadAttachmentEventsCopyWithImpl<$Res>
    extends _$MessengerEventCopyWithImpl<$Res>
    implements _$$_$MessengerDownloadAttachmentEventsCopyWith<$Res> {
  __$$_$MessengerDownloadAttachmentEventsCopyWithImpl(
      _$_$MessengerDownloadAttachmentEvents _value,
      $Res Function(_$_$MessengerDownloadAttachmentEvents) _then)
      : super(_value, (v) => _then(v as _$_$MessengerDownloadAttachmentEvents));

  @override
  _$_$MessengerDownloadAttachmentEvents get _value =>
      super._value as _$_$MessengerDownloadAttachmentEvents;

  @override
  $Res call({
    Object? url = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_$MessengerDownloadAttachmentEvents(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$MessengerDownloadAttachmentEvents
    implements _$MessengerDownloadAttachmentEvents {
  const _$_$MessengerDownloadAttachmentEvents(this.url, this.path);

  @override
  final String url;
  @override
  final String path;

  @override
  String toString() {
    return 'MessengerEvent.downloadAttachment(url: $url, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerDownloadAttachmentEvents &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerDownloadAttachmentEventsCopyWith<
          _$_$MessengerDownloadAttachmentEvents>
      get copyWith => __$$_$MessengerDownloadAttachmentEventsCopyWithImpl<
          _$_$MessengerDownloadAttachmentEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)
        sendMessage,
    required TResult Function() startRecieveMessages,
    required TResult Function(String url, String path) downloadAttachment,
    required TResult Function(bool isTyping) typing,
  }) {
    return downloadAttachment(url, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
  }) {
    return downloadAttachment?.call(url, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
    required TResult orElse(),
  }) {
    if (downloadAttachment != null) {
      return downloadAttachment(url, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerSendMessageEvent value) sendMessage,
    required TResult Function(_$MessengerStartRecieveMessagesEventFixed value)
        startRecieveMessages,
    required TResult Function(_$MessengerDownloadAttachmentEvents value)
        downloadAttachment,
    required TResult Function(_$MessengerTypingEvent value) typing,
  }) {
    return downloadAttachment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
  }) {
    return downloadAttachment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
    required TResult orElse(),
  }) {
    if (downloadAttachment != null) {
      return downloadAttachment(this);
    }
    return orElse();
  }
}

abstract class _$MessengerDownloadAttachmentEvents implements MessengerEvent {
  const factory _$MessengerDownloadAttachmentEvents(
          final String url, final String path) =
      _$_$MessengerDownloadAttachmentEvents;

  String get url => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerDownloadAttachmentEventsCopyWith<
          _$_$MessengerDownloadAttachmentEvents>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerTypingEventCopyWith<$Res> {
  factory _$$_$MessengerTypingEventCopyWith(_$_$MessengerTypingEvent value,
          $Res Function(_$_$MessengerTypingEvent) then) =
      __$$_$MessengerTypingEventCopyWithImpl<$Res>;
  $Res call({bool isTyping});
}

/// @nodoc
class __$$_$MessengerTypingEventCopyWithImpl<$Res>
    extends _$MessengerEventCopyWithImpl<$Res>
    implements _$$_$MessengerTypingEventCopyWith<$Res> {
  __$$_$MessengerTypingEventCopyWithImpl(_$_$MessengerTypingEvent _value,
      $Res Function(_$_$MessengerTypingEvent) _then)
      : super(_value, (v) => _then(v as _$_$MessengerTypingEvent));

  @override
  _$_$MessengerTypingEvent get _value =>
      super._value as _$_$MessengerTypingEvent;

  @override
  $Res call({
    Object? isTyping = freezed,
  }) {
    return _then(_$_$MessengerTypingEvent(
      isTyping == freezed
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$MessengerTypingEvent implements _$MessengerTypingEvent {
  const _$_$MessengerTypingEvent(this.isTyping);

  @override
  final bool isTyping;

  @override
  String toString() {
    return 'MessengerEvent.typing(isTyping: $isTyping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerTypingEvent &&
            const DeepCollectionEquality().equals(other.isTyping, isTyping));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isTyping));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerTypingEventCopyWith<_$_$MessengerTypingEvent> get copyWith =>
      __$$_$MessengerTypingEventCopyWithImpl<_$_$MessengerTypingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)
        sendMessage,
    required TResult Function() startRecieveMessages,
    required TResult Function(String url, String path) downloadAttachment,
    required TResult Function(bool isTyping) typing,
  }) {
    return typing(isTyping);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
  }) {
    return typing?.call(isTyping);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? message,
            List<PlatformFile>? attachements,
            messageTypes messageType,
            List<Message> attachetMessages,
            DocumentReference<Object?> chat)?
        sendMessage,
    TResult Function()? startRecieveMessages,
    TResult Function(String url, String path)? downloadAttachment,
    TResult Function(bool isTyping)? typing,
    required TResult orElse(),
  }) {
    if (typing != null) {
      return typing(isTyping);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerSendMessageEvent value) sendMessage,
    required TResult Function(_$MessengerStartRecieveMessagesEventFixed value)
        startRecieveMessages,
    required TResult Function(_$MessengerDownloadAttachmentEvents value)
        downloadAttachment,
    required TResult Function(_$MessengerTypingEvent value) typing,
  }) {
    return typing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
  }) {
    return typing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerSendMessageEvent value)? sendMessage,
    TResult Function(_$MessengerStartRecieveMessagesEventFixed value)?
        startRecieveMessages,
    TResult Function(_$MessengerDownloadAttachmentEvents value)?
        downloadAttachment,
    TResult Function(_$MessengerTypingEvent value)? typing,
    required TResult orElse(),
  }) {
    if (typing != null) {
      return typing(this);
    }
    return orElse();
  }
}

abstract class _$MessengerTypingEvent implements MessengerEvent {
  const factory _$MessengerTypingEvent(final bool isTyping) =
      _$_$MessengerTypingEvent;

  bool get isTyping => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerTypingEventCopyWith<_$_$MessengerTypingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessengerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessengerStateCopyWith<$Res> {
  factory $MessengerStateCopyWith(
          MessengerState value, $Res Function(MessengerState) then) =
      _$MessengerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessengerStateCopyWithImpl<$Res>
    implements $MessengerStateCopyWith<$Res> {
  _$MessengerStateCopyWithImpl(this._value, this._then);

  final MessengerState _value;
  // ignore: unused_field
  final $Res Function(MessengerState) _then;
}

/// @nodoc
abstract class _$$_$MessengerMessageSendedStateCopyWith<$Res> {
  factory _$$_$MessengerMessageSendedStateCopyWith(
          _$_$MessengerMessageSendedState value,
          $Res Function(_$_$MessengerMessageSendedState) then) =
      __$$_$MessengerMessageSendedStateCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_$MessengerMessageSendedStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerMessageSendedStateCopyWith<$Res> {
  __$$_$MessengerMessageSendedStateCopyWithImpl(
      _$_$MessengerMessageSendedState _value,
      $Res Function(_$_$MessengerMessageSendedState) _then)
      : super(_value, (v) => _then(v as _$_$MessengerMessageSendedState));

  @override
  _$_$MessengerMessageSendedState get _value =>
      super._value as _$_$MessengerMessageSendedState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_$MessengerMessageSendedState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_$MessengerMessageSendedState implements _$MessengerMessageSendedState {
  const _$_$MessengerMessageSendedState(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'MessengerState.messageSended(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerMessageSendedState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerMessageSendedStateCopyWith<_$_$MessengerMessageSendedState>
      get copyWith => __$$_$MessengerMessageSendedStateCopyWithImpl<
          _$_$MessengerMessageSendedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return messageSended(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return messageSended?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return messageSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return messageSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended(this);
    }
    return orElse();
  }
}

abstract class _$MessengerMessageSendedState implements MessengerState {
  const factory _$MessengerMessageSendedState(final Message message) =
      _$_$MessengerMessageSendedState;

  Message get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerMessageSendedStateCopyWith<_$_$MessengerMessageSendedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerListeningStartedStateCopyWith<$Res> {
  factory _$$_$MessengerListeningStartedStateCopyWith(
          _$_$MessengerListeningStartedState value,
          $Res Function(_$_$MessengerListeningStartedState) then) =
      __$$_$MessengerListeningStartedStateCopyWithImpl<$Res>;
  $Res call({Future<void> Function(dynamic) func});
}

/// @nodoc
class __$$_$MessengerListeningStartedStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerListeningStartedStateCopyWith<$Res> {
  __$$_$MessengerListeningStartedStateCopyWithImpl(
      _$_$MessengerListeningStartedState _value,
      $Res Function(_$_$MessengerListeningStartedState) _then)
      : super(_value, (v) => _then(v as _$_$MessengerListeningStartedState));

  @override
  _$_$MessengerListeningStartedState get _value =>
      super._value as _$_$MessengerListeningStartedState;

  @override
  $Res call({
    Object? func = freezed,
  }) {
    return _then(_$_$MessengerListeningStartedState(
      func == freezed
          ? _value.func
          : func // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(dynamic),
    ));
  }
}

/// @nodoc

class _$_$MessengerListeningStartedState
    implements _$MessengerListeningStartedState {
  const _$_$MessengerListeningStartedState(this.func);

  @override
  final Future<void> Function(dynamic) func;

  @override
  String toString() {
    return 'MessengerState.listeningStarted(func: $func)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerListeningStartedState &&
            (identical(other.func, func) || other.func == func));
  }

  @override
  int get hashCode => Object.hash(runtimeType, func);

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerListeningStartedStateCopyWith<
          _$_$MessengerListeningStartedState>
      get copyWith => __$$_$MessengerListeningStartedStateCopyWithImpl<
          _$_$MessengerListeningStartedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return listeningStarted(func);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return listeningStarted?.call(func);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (listeningStarted != null) {
      return listeningStarted(func);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return listeningStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return listeningStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (listeningStarted != null) {
      return listeningStarted(this);
    }
    return orElse();
  }
}

abstract class _$MessengerListeningStartedState implements MessengerState {
  const factory _$MessengerListeningStartedState(
          final Future<void> Function(dynamic) func) =
      _$_$MessengerListeningStartedState;

  Future<void> Function(dynamic) get func => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerListeningStartedStateCopyWith<
          _$_$MessengerListeningStartedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerAttachmentLoadingStateCopyWith<$Res> {
  factory _$$_$MessengerAttachmentLoadingStateCopyWith(
          _$_$MessengerAttachmentLoadingState value,
          $Res Function(_$_$MessengerAttachmentLoadingState) then) =
      __$$_$MessengerAttachmentLoadingStateCopyWithImpl<$Res>;
  $Res call({double percent, Uint8List data, String name});
}

/// @nodoc
class __$$_$MessengerAttachmentLoadingStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerAttachmentLoadingStateCopyWith<$Res> {
  __$$_$MessengerAttachmentLoadingStateCopyWithImpl(
      _$_$MessengerAttachmentLoadingState _value,
      $Res Function(_$_$MessengerAttachmentLoadingState) _then)
      : super(_value, (v) => _then(v as _$_$MessengerAttachmentLoadingState));

  @override
  _$_$MessengerAttachmentLoadingState get _value =>
      super._value as _$_$MessengerAttachmentLoadingState;

  @override
  $Res call({
    Object? percent = freezed,
    Object? data = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_$MessengerAttachmentLoadingState(
      percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$MessengerAttachmentLoadingState
    implements _$MessengerAttachmentLoadingState {
  const _$_$MessengerAttachmentLoadingState(this.percent, this.data, this.name);

  @override
  final double percent;
  @override
  final Uint8List data;
  @override
  final String name;

  @override
  String toString() {
    return 'MessengerState.attachmentLoading(percent: $percent, data: $data, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerAttachmentLoadingState &&
            const DeepCollectionEquality().equals(other.percent, percent) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(percent),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerAttachmentLoadingStateCopyWith<
          _$_$MessengerAttachmentLoadingState>
      get copyWith => __$$_$MessengerAttachmentLoadingStateCopyWithImpl<
          _$_$MessengerAttachmentLoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return attachmentLoading(percent, data, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return attachmentLoading?.call(percent, data, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (attachmentLoading != null) {
      return attachmentLoading(percent, data, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return attachmentLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return attachmentLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (attachmentLoading != null) {
      return attachmentLoading(this);
    }
    return orElse();
  }
}

abstract class _$MessengerAttachmentLoadingState implements MessengerState {
  const factory _$MessengerAttachmentLoadingState(
          final double percent, final Uint8List data, final String name) =
      _$_$MessengerAttachmentLoadingState;

  double get percent => throw _privateConstructorUsedError;
  Uint8List get data => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerAttachmentLoadingStateCopyWith<
          _$_$MessengerAttachmentLoadingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerAttachmentLoadedStateCopyWith<$Res> {
  factory _$$_$MessengerAttachmentLoadedStateCopyWith(
          _$_$MessengerAttachmentLoadedState value,
          $Res Function(_$_$MessengerAttachmentLoadedState) then) =
      __$$_$MessengerAttachmentLoadedStateCopyWithImpl<$Res>;
  $Res call({String name, String downloadUrl});
}

/// @nodoc
class __$$_$MessengerAttachmentLoadedStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerAttachmentLoadedStateCopyWith<$Res> {
  __$$_$MessengerAttachmentLoadedStateCopyWithImpl(
      _$_$MessengerAttachmentLoadedState _value,
      $Res Function(_$_$MessengerAttachmentLoadedState) _then)
      : super(_value, (v) => _then(v as _$_$MessengerAttachmentLoadedState));

  @override
  _$_$MessengerAttachmentLoadedState get _value =>
      super._value as _$_$MessengerAttachmentLoadedState;

  @override
  $Res call({
    Object? name = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_$_$MessengerAttachmentLoadedState(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$MessengerAttachmentLoadedState
    implements _$MessengerAttachmentLoadedState {
  const _$_$MessengerAttachmentLoadedState(this.name, this.downloadUrl);

  @override
  final String name;
  @override
  final String downloadUrl;

  @override
  String toString() {
    return 'MessengerState.attachmentLoaded(name: $name, downloadUrl: $downloadUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerAttachmentLoadedState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.downloadUrl, downloadUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(downloadUrl));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerAttachmentLoadedStateCopyWith<
          _$_$MessengerAttachmentLoadedState>
      get copyWith => __$$_$MessengerAttachmentLoadedStateCopyWithImpl<
          _$_$MessengerAttachmentLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return attachmentLoaded(name, downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return attachmentLoaded?.call(name, downloadUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (attachmentLoaded != null) {
      return attachmentLoaded(name, downloadUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return attachmentLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return attachmentLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (attachmentLoaded != null) {
      return attachmentLoaded(this);
    }
    return orElse();
  }
}

abstract class _$MessengerAttachmentLoadedState implements MessengerState {
  const factory _$MessengerAttachmentLoadedState(
          final String name, final String downloadUrl) =
      _$_$MessengerAttachmentLoadedState;

  String get name => throw _privateConstructorUsedError;
  String get downloadUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerAttachmentLoadedStateCopyWith<
          _$_$MessengerAttachmentLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerAttachmentDownloadedStateCopyWith<$Res> {
  factory _$$_$MessengerAttachmentDownloadedStateCopyWith(
          _$_$MessengerAttachmentDownloadedState value,
          $Res Function(_$_$MessengerAttachmentDownloadedState) then) =
      __$$_$MessengerAttachmentDownloadedStateCopyWithImpl<$Res>;
  $Res call({String name, Uint8List data});
}

/// @nodoc
class __$$_$MessengerAttachmentDownloadedStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerAttachmentDownloadedStateCopyWith<$Res> {
  __$$_$MessengerAttachmentDownloadedStateCopyWithImpl(
      _$_$MessengerAttachmentDownloadedState _value,
      $Res Function(_$_$MessengerAttachmentDownloadedState) _then)
      : super(
            _value, (v) => _then(v as _$_$MessengerAttachmentDownloadedState));

  @override
  _$_$MessengerAttachmentDownloadedState get _value =>
      super._value as _$_$MessengerAttachmentDownloadedState;

  @override
  $Res call({
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_$MessengerAttachmentDownloadedState(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_$MessengerAttachmentDownloadedState
    implements _$MessengerAttachmentDownloadedState {
  const _$_$MessengerAttachmentDownloadedState(this.name, this.data);

  @override
  final String name;
  @override
  final Uint8List data;

  @override
  String toString() {
    return 'MessengerState.attachmentDownloaded(name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerAttachmentDownloadedState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerAttachmentDownloadedStateCopyWith<
          _$_$MessengerAttachmentDownloadedState>
      get copyWith => __$$_$MessengerAttachmentDownloadedStateCopyWithImpl<
          _$_$MessengerAttachmentDownloadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return attachmentDownloaded(name, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return attachmentDownloaded?.call(name, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (attachmentDownloaded != null) {
      return attachmentDownloaded(name, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return attachmentDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return attachmentDownloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (attachmentDownloaded != null) {
      return attachmentDownloaded(this);
    }
    return orElse();
  }
}

abstract class _$MessengerAttachmentDownloadedState implements MessengerState {
  const factory _$MessengerAttachmentDownloadedState(
          final String name, final Uint8List data) =
      _$_$MessengerAttachmentDownloadedState;

  String get name => throw _privateConstructorUsedError;
  Uint8List get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerAttachmentDownloadedStateCopyWith<
          _$_$MessengerAttachmentDownloadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerAttachmentErroredStateCopyWith<$Res> {
  factory _$$_$MessengerAttachmentErroredStateCopyWith(
          _$_$MessengerAttachmentErroredState value,
          $Res Function(_$_$MessengerAttachmentErroredState) then) =
      __$$_$MessengerAttachmentErroredStateCopyWithImpl<$Res>;
  $Res call({String name, String error});
}

/// @nodoc
class __$$_$MessengerAttachmentErroredStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerAttachmentErroredStateCopyWith<$Res> {
  __$$_$MessengerAttachmentErroredStateCopyWithImpl(
      _$_$MessengerAttachmentErroredState _value,
      $Res Function(_$_$MessengerAttachmentErroredState) _then)
      : super(_value, (v) => _then(v as _$_$MessengerAttachmentErroredState));

  @override
  _$_$MessengerAttachmentErroredState get _value =>
      super._value as _$_$MessengerAttachmentErroredState;

  @override
  $Res call({
    Object? name = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_$MessengerAttachmentErroredState(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$MessengerAttachmentErroredState
    implements _$MessengerAttachmentErroredState {
  const _$_$MessengerAttachmentErroredState(this.name, this.error);

  @override
  final String name;
  @override
  final String error;

  @override
  String toString() {
    return 'MessengerState.attachmentNotLoaded(name: $name, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerAttachmentErroredState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerAttachmentErroredStateCopyWith<
          _$_$MessengerAttachmentErroredState>
      get copyWith => __$$_$MessengerAttachmentErroredStateCopyWithImpl<
          _$_$MessengerAttachmentErroredState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return attachmentNotLoaded(name, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return attachmentNotLoaded?.call(name, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (attachmentNotLoaded != null) {
      return attachmentNotLoaded(name, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return attachmentNotLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return attachmentNotLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (attachmentNotLoaded != null) {
      return attachmentNotLoaded(this);
    }
    return orElse();
  }
}

abstract class _$MessengerAttachmentErroredState implements MessengerState {
  const factory _$MessengerAttachmentErroredState(
          final String name, final String error) =
      _$_$MessengerAttachmentErroredState;

  String get name => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerAttachmentErroredStateCopyWith<
          _$_$MessengerAttachmentErroredState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerMessageLoadingStateCopyWith<$Res> {
  factory _$$_$MessengerMessageLoadingStateCopyWith(
          _$_$MessengerMessageLoadingState value,
          $Res Function(_$_$MessengerMessageLoadingState) then) =
      __$$_$MessengerMessageLoadingStateCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_$MessengerMessageLoadingStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerMessageLoadingStateCopyWith<$Res> {
  __$$_$MessengerMessageLoadingStateCopyWithImpl(
      _$_$MessengerMessageLoadingState _value,
      $Res Function(_$_$MessengerMessageLoadingState) _then)
      : super(_value, (v) => _then(v as _$_$MessengerMessageLoadingState));

  @override
  _$_$MessengerMessageLoadingState get _value =>
      super._value as _$_$MessengerMessageLoadingState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_$MessengerMessageLoadingState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_$MessengerMessageLoadingState
    implements _$MessengerMessageLoadingState {
  const _$_$MessengerMessageLoadingState(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'MessengerState.messageLoading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerMessageLoadingState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerMessageLoadingStateCopyWith<_$_$MessengerMessageLoadingState>
      get copyWith => __$$_$MessengerMessageLoadingStateCopyWithImpl<
          _$_$MessengerMessageLoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return messageLoading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return messageLoading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (messageLoading != null) {
      return messageLoading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return messageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return messageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (messageLoading != null) {
      return messageLoading(this);
    }
    return orElse();
  }
}

abstract class _$MessengerMessageLoadingState implements MessengerState {
  const factory _$MessengerMessageLoadingState(final Message message) =
      _$_$MessengerMessageLoadingState;

  Message get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerMessageLoadingStateCopyWith<_$_$MessengerMessageLoadingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerMessageNotSendedStateCopyWith<$Res> {
  factory _$$_$MessengerMessageNotSendedStateCopyWith(
          _$_$MessengerMessageNotSendedState value,
          $Res Function(_$_$MessengerMessageNotSendedState) then) =
      __$$_$MessengerMessageNotSendedStateCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_$MessengerMessageNotSendedStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerMessageNotSendedStateCopyWith<$Res> {
  __$$_$MessengerMessageNotSendedStateCopyWithImpl(
      _$_$MessengerMessageNotSendedState _value,
      $Res Function(_$_$MessengerMessageNotSendedState) _then)
      : super(_value, (v) => _then(v as _$_$MessengerMessageNotSendedState));

  @override
  _$_$MessengerMessageNotSendedState get _value =>
      super._value as _$_$MessengerMessageNotSendedState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_$MessengerMessageNotSendedState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_$MessengerMessageNotSendedState
    implements _$MessengerMessageNotSendedState {
  const _$_$MessengerMessageNotSendedState(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'MessengerState.messageNotSended(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerMessageNotSendedState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerMessageNotSendedStateCopyWith<
          _$_$MessengerMessageNotSendedState>
      get copyWith => __$$_$MessengerMessageNotSendedStateCopyWithImpl<
          _$_$MessengerMessageNotSendedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return messageNotSended(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return messageNotSended?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (messageNotSended != null) {
      return messageNotSended(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return messageNotSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return messageNotSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (messageNotSended != null) {
      return messageNotSended(this);
    }
    return orElse();
  }
}

abstract class _$MessengerMessageNotSendedState implements MessengerState {
  const factory _$MessengerMessageNotSendedState(final Message message) =
      _$_$MessengerMessageNotSendedState;

  Message get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerMessageNotSendedStateCopyWith<
          _$_$MessengerMessageNotSendedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerInitialStateCopyWith<$Res> {
  factory _$$_$MessengerInitialStateCopyWith(_$_$MessengerInitialState value,
          $Res Function(_$_$MessengerInitialState) then) =
      __$$_$MessengerInitialStateCopyWithImpl<$Res>;
  $Res call({DocumentReference<Object?> chatReference});
}

/// @nodoc
class __$$_$MessengerInitialStateCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerInitialStateCopyWith<$Res> {
  __$$_$MessengerInitialStateCopyWithImpl(_$_$MessengerInitialState _value,
      $Res Function(_$_$MessengerInitialState) _then)
      : super(_value, (v) => _then(v as _$_$MessengerInitialState));

  @override
  _$_$MessengerInitialState get _value =>
      super._value as _$_$MessengerInitialState;

  @override
  $Res call({
    Object? chatReference = freezed,
  }) {
    return _then(_$_$MessengerInitialState(
      chatReference == freezed
          ? _value.chatReference
          : chatReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_$MessengerInitialState implements _$MessengerInitialState {
  const _$_$MessengerInitialState(this.chatReference);

  @override
  final DocumentReference<Object?> chatReference;

  @override
  String toString() {
    return 'MessengerState.initial(chatReference: $chatReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerInitialState &&
            const DeepCollectionEquality()
                .equals(other.chatReference, chatReference));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(chatReference));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerInitialStateCopyWith<_$_$MessengerInitialState> get copyWith =>
      __$$_$MessengerInitialStateCopyWithImpl<_$_$MessengerInitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return initial(chatReference);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return initial?.call(chatReference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(chatReference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$MessengerInitialState implements MessengerState {
  const factory _$MessengerInitialState(
          final DocumentReference<Object?> chatReference) =
      _$_$MessengerInitialState;

  DocumentReference<Object?> get chatReference =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerInitialStateCopyWith<_$_$MessengerInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$MessengerMessageGotCopyWith<$Res> {
  factory _$$_$MessengerMessageGotCopyWith(_$_$MessengerMessageGot value,
          $Res Function(_$_$MessengerMessageGot) then) =
      __$$_$MessengerMessageGotCopyWithImpl<$Res>;
  $Res call({Message message, bool isCurrentUser, bool needToUpdate});
}

/// @nodoc
class __$$_$MessengerMessageGotCopyWithImpl<$Res>
    extends _$MessengerStateCopyWithImpl<$Res>
    implements _$$_$MessengerMessageGotCopyWith<$Res> {
  __$$_$MessengerMessageGotCopyWithImpl(_$_$MessengerMessageGot _value,
      $Res Function(_$_$MessengerMessageGot) _then)
      : super(_value, (v) => _then(v as _$_$MessengerMessageGot));

  @override
  _$_$MessengerMessageGot get _value => super._value as _$_$MessengerMessageGot;

  @override
  $Res call({
    Object? message = freezed,
    Object? isCurrentUser = freezed,
    Object? needToUpdate = freezed,
  }) {
    return _then(_$_$MessengerMessageGot(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      isCurrentUser == freezed
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      needToUpdate == freezed
          ? _value.needToUpdate
          : needToUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$MessengerMessageGot implements _$MessengerMessageGot {
  const _$_$MessengerMessageGot(
      this.message, this.isCurrentUser, this.needToUpdate);

  @override
  final Message message;
  @override
  final bool isCurrentUser;
  @override
  final bool needToUpdate;

  @override
  String toString() {
    return 'MessengerState.messageGot(message: $message, isCurrentUser: $isCurrentUser, needToUpdate: $needToUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$MessengerMessageGot &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.isCurrentUser, isCurrentUser) &&
            const DeepCollectionEquality()
                .equals(other.needToUpdate, needToUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isCurrentUser),
      const DeepCollectionEquality().hash(needToUpdate));

  @JsonKey(ignore: true)
  @override
  _$$_$MessengerMessageGotCopyWith<_$_$MessengerMessageGot> get copyWith =>
      __$$_$MessengerMessageGotCopyWithImpl<_$_$MessengerMessageGot>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) messageSended,
    required TResult Function(Future<void> Function(dynamic) func)
        listeningStarted,
    required TResult Function(double percent, Uint8List data, String name)
        attachmentLoading,
    required TResult Function(String name, String downloadUrl) attachmentLoaded,
    required TResult Function(String name, Uint8List data) attachmentDownloaded,
    required TResult Function(String name, String error) attachmentNotLoaded,
    required TResult Function(Message message) messageLoading,
    required TResult Function(Message message) messageNotSended,
    required TResult Function(DocumentReference<Object?> chatReference) initial,
    required TResult Function(
            Message message, bool isCurrentUser, bool needToUpdate)
        messageGot,
  }) {
    return messageGot(message, isCurrentUser, needToUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
  }) {
    return messageGot?.call(message, isCurrentUser, needToUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? messageSended,
    TResult Function(Future<void> Function(dynamic) func)? listeningStarted,
    TResult Function(double percent, Uint8List data, String name)?
        attachmentLoading,
    TResult Function(String name, String downloadUrl)? attachmentLoaded,
    TResult Function(String name, Uint8List data)? attachmentDownloaded,
    TResult Function(String name, String error)? attachmentNotLoaded,
    TResult Function(Message message)? messageLoading,
    TResult Function(Message message)? messageNotSended,
    TResult Function(DocumentReference<Object?> chatReference)? initial,
    TResult Function(Message message, bool isCurrentUser, bool needToUpdate)?
        messageGot,
    required TResult orElse(),
  }) {
    if (messageGot != null) {
      return messageGot(message, isCurrentUser, needToUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MessengerMessageSendedState value)
        messageSended,
    required TResult Function(_$MessengerListeningStartedState value)
        listeningStarted,
    required TResult Function(_$MessengerAttachmentLoadingState value)
        attachmentLoading,
    required TResult Function(_$MessengerAttachmentLoadedState value)
        attachmentLoaded,
    required TResult Function(_$MessengerAttachmentDownloadedState value)
        attachmentDownloaded,
    required TResult Function(_$MessengerAttachmentErroredState value)
        attachmentNotLoaded,
    required TResult Function(_$MessengerMessageLoadingState value)
        messageLoading,
    required TResult Function(_$MessengerMessageNotSendedState value)
        messageNotSended,
    required TResult Function(_$MessengerInitialState value) initial,
    required TResult Function(_$MessengerMessageGot value) messageGot,
  }) {
    return messageGot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
  }) {
    return messageGot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MessengerMessageSendedState value)? messageSended,
    TResult Function(_$MessengerListeningStartedState value)? listeningStarted,
    TResult Function(_$MessengerAttachmentLoadingState value)?
        attachmentLoading,
    TResult Function(_$MessengerAttachmentLoadedState value)? attachmentLoaded,
    TResult Function(_$MessengerAttachmentDownloadedState value)?
        attachmentDownloaded,
    TResult Function(_$MessengerAttachmentErroredState value)?
        attachmentNotLoaded,
    TResult Function(_$MessengerMessageLoadingState value)? messageLoading,
    TResult Function(_$MessengerMessageNotSendedState value)? messageNotSended,
    TResult Function(_$MessengerInitialState value)? initial,
    TResult Function(_$MessengerMessageGot value)? messageGot,
    required TResult orElse(),
  }) {
    if (messageGot != null) {
      return messageGot(this);
    }
    return orElse();
  }
}

abstract class _$MessengerMessageGot implements MessengerState {
  const factory _$MessengerMessageGot(
      final Message message,
      final bool isCurrentUser,
      final bool needToUpdate) = _$_$MessengerMessageGot;

  Message get message => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;
  bool get needToUpdate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$MessengerMessageGotCopyWith<_$_$MessengerMessageGot> get copyWith =>
      throw _privateConstructorUsedError;
}
