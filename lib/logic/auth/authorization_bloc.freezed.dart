// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, AuthType authType)
        SignInByEmail,
    required TResult Function(bool isSilent, AuthType authType) SignInByMPT,
    required TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)
        AddingAdditionalInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, AuthType authType)?
        SignInByEmail,
    TResult Function(bool isSilent, AuthType authType)? SignInByMPT,
    TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)?
        AddingAdditionalInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, AuthType authType)?
        SignInByEmail,
    TResult Function(bool isSilent, AuthType authType)? SignInByMPT,
    TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)?
        AddingAdditionalInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignInByEmailEvent value)
        SignInByEmail,
    required TResult Function(_$AuthorizationSignInByMPTEvent value)
        SignInByMPT,
    required TResult Function(
            _$AuthorizationAddingAdditionalInformationEvent value)
        AddingAdditionalInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignInByEmailEvent value)? SignInByEmail,
    TResult Function(_$AuthorizationSignInByMPTEvent value)? SignInByMPT,
    TResult Function(_$AuthorizationAddingAdditionalInformationEvent value)?
        AddingAdditionalInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignInByEmailEvent value)? SignInByEmail,
    TResult Function(_$AuthorizationSignInByMPTEvent value)? SignInByMPT,
    TResult Function(_$AuthorizationAddingAdditionalInformationEvent value)?
        AddingAdditionalInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  final AuthorizationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthorizationEvent) _then;
}

/// @nodoc
abstract class _$$_$AuthorizationSignInByEmailEventCopyWith<$Res> {
  factory _$$_$AuthorizationSignInByEmailEventCopyWith(
          _$_$AuthorizationSignInByEmailEvent value,
          $Res Function(_$_$AuthorizationSignInByEmailEvent) then) =
      __$$_$AuthorizationSignInByEmailEventCopyWithImpl<$Res>;
  $Res call({String email, String password, AuthType authType});
}

/// @nodoc
class __$$_$AuthorizationSignInByEmailEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$$_$AuthorizationSignInByEmailEventCopyWith<$Res> {
  __$$_$AuthorizationSignInByEmailEventCopyWithImpl(
      _$_$AuthorizationSignInByEmailEvent _value,
      $Res Function(_$_$AuthorizationSignInByEmailEvent) _then)
      : super(_value, (v) => _then(v as _$_$AuthorizationSignInByEmailEvent));

  @override
  _$_$AuthorizationSignInByEmailEvent get _value =>
      super._value as _$_$AuthorizationSignInByEmailEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? authType = freezed,
  }) {
    return _then(_$_$AuthorizationSignInByEmailEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      authType: authType == freezed
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ));
  }
}

/// @nodoc

class _$_$AuthorizationSignInByEmailEvent
    with DiagnosticableTreeMixin
    implements _$AuthorizationSignInByEmailEvent {
  const _$_$AuthorizationSignInByEmailEvent(
      {required this.email, required this.password, required this.authType});

  @override
  final String email;
  @override
  final String password;
  @override
  final AuthType authType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationEvent.SignInByEmail(email: $email, password: $password, authType: $authType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthorizationEvent.SignInByEmail'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('authType', authType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationSignInByEmailEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.authType, authType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(authType));

  @JsonKey(ignore: true)
  @override
  _$$_$AuthorizationSignInByEmailEventCopyWith<
          _$_$AuthorizationSignInByEmailEvent>
      get copyWith => __$$_$AuthorizationSignInByEmailEventCopyWithImpl<
          _$_$AuthorizationSignInByEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, AuthType authType)
        SignInByEmail,
    required TResult Function(bool isSilent, AuthType authType) SignInByMPT,
    required TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)
        AddingAdditionalInformation,
  }) {
    return SignInByEmail(email, password, authType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, AuthType authType)?
        SignInByEmail,
    TResult Function(bool isSilent, AuthType authType)? SignInByMPT,
    TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)?
        AddingAdditionalInformation,
  }) {
    return SignInByEmail?.call(email, password, authType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, AuthType authType)?
        SignInByEmail,
    TResult Function(bool isSilent, AuthType authType)? SignInByMPT,
    TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)?
        AddingAdditionalInformation,
    required TResult orElse(),
  }) {
    if (SignInByEmail != null) {
      return SignInByEmail(email, password, authType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignInByEmailEvent value)
        SignInByEmail,
    required TResult Function(_$AuthorizationSignInByMPTEvent value)
        SignInByMPT,
    required TResult Function(
            _$AuthorizationAddingAdditionalInformationEvent value)
        AddingAdditionalInformation,
  }) {
    return SignInByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignInByEmailEvent value)? SignInByEmail,
    TResult Function(_$AuthorizationSignInByMPTEvent value)? SignInByMPT,
    TResult Function(_$AuthorizationAddingAdditionalInformationEvent value)?
        AddingAdditionalInformation,
  }) {
    return SignInByEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignInByEmailEvent value)? SignInByEmail,
    TResult Function(_$AuthorizationSignInByMPTEvent value)? SignInByMPT,
    TResult Function(_$AuthorizationAddingAdditionalInformationEvent value)?
        AddingAdditionalInformation,
    required TResult orElse(),
  }) {
    if (SignInByEmail != null) {
      return SignInByEmail(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationSignInByEmailEvent implements AuthorizationEvent {
  const factory _$AuthorizationSignInByEmailEvent(
      {required final String email,
      required final String password,
      required final AuthType authType}) = _$_$AuthorizationSignInByEmailEvent;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  AuthType get authType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$AuthorizationSignInByEmailEventCopyWith<
          _$_$AuthorizationSignInByEmailEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthorizationSignInByMPTEventCopyWith<$Res> {
  factory _$$_$AuthorizationSignInByMPTEventCopyWith(
          _$_$AuthorizationSignInByMPTEvent value,
          $Res Function(_$_$AuthorizationSignInByMPTEvent) then) =
      __$$_$AuthorizationSignInByMPTEventCopyWithImpl<$Res>;
  $Res call({bool isSilent, AuthType authType});
}

/// @nodoc
class __$$_$AuthorizationSignInByMPTEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$$_$AuthorizationSignInByMPTEventCopyWith<$Res> {
  __$$_$AuthorizationSignInByMPTEventCopyWithImpl(
      _$_$AuthorizationSignInByMPTEvent _value,
      $Res Function(_$_$AuthorizationSignInByMPTEvent) _then)
      : super(_value, (v) => _then(v as _$_$AuthorizationSignInByMPTEvent));

  @override
  _$_$AuthorizationSignInByMPTEvent get _value =>
      super._value as _$_$AuthorizationSignInByMPTEvent;

  @override
  $Res call({
    Object? isSilent = freezed,
    Object? authType = freezed,
  }) {
    return _then(_$_$AuthorizationSignInByMPTEvent(
      isSilent: isSilent == freezed
          ? _value.isSilent
          : isSilent // ignore: cast_nullable_to_non_nullable
              as bool,
      authType: authType == freezed
          ? _value.authType
          : authType // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ));
  }
}

/// @nodoc

class _$_$AuthorizationSignInByMPTEvent
    with DiagnosticableTreeMixin
    implements _$AuthorizationSignInByMPTEvent {
  const _$_$AuthorizationSignInByMPTEvent(
      {required this.isSilent, required this.authType});

  @override
  final bool isSilent;
  @override
  final AuthType authType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationEvent.SignInByMPT(isSilent: $isSilent, authType: $authType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthorizationEvent.SignInByMPT'))
      ..add(DiagnosticsProperty('isSilent', isSilent))
      ..add(DiagnosticsProperty('authType', authType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationSignInByMPTEvent &&
            const DeepCollectionEquality().equals(other.isSilent, isSilent) &&
            const DeepCollectionEquality().equals(other.authType, authType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSilent),
      const DeepCollectionEquality().hash(authType));

  @JsonKey(ignore: true)
  @override
  _$$_$AuthorizationSignInByMPTEventCopyWith<_$_$AuthorizationSignInByMPTEvent>
      get copyWith => __$$_$AuthorizationSignInByMPTEventCopyWithImpl<
          _$_$AuthorizationSignInByMPTEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, AuthType authType)
        SignInByEmail,
    required TResult Function(bool isSilent, AuthType authType) SignInByMPT,
    required TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)
        AddingAdditionalInformation,
  }) {
    return SignInByMPT(isSilent, authType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, AuthType authType)?
        SignInByEmail,
    TResult Function(bool isSilent, AuthType authType)? SignInByMPT,
    TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)?
        AddingAdditionalInformation,
  }) {
    return SignInByMPT?.call(isSilent, authType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, AuthType authType)?
        SignInByEmail,
    TResult Function(bool isSilent, AuthType authType)? SignInByMPT,
    TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)?
        AddingAdditionalInformation,
    required TResult orElse(),
  }) {
    if (SignInByMPT != null) {
      return SignInByMPT(isSilent, authType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignInByEmailEvent value)
        SignInByEmail,
    required TResult Function(_$AuthorizationSignInByMPTEvent value)
        SignInByMPT,
    required TResult Function(
            _$AuthorizationAddingAdditionalInformationEvent value)
        AddingAdditionalInformation,
  }) {
    return SignInByMPT(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignInByEmailEvent value)? SignInByEmail,
    TResult Function(_$AuthorizationSignInByMPTEvent value)? SignInByMPT,
    TResult Function(_$AuthorizationAddingAdditionalInformationEvent value)?
        AddingAdditionalInformation,
  }) {
    return SignInByMPT?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignInByEmailEvent value)? SignInByEmail,
    TResult Function(_$AuthorizationSignInByMPTEvent value)? SignInByMPT,
    TResult Function(_$AuthorizationAddingAdditionalInformationEvent value)?
        AddingAdditionalInformation,
    required TResult orElse(),
  }) {
    if (SignInByMPT != null) {
      return SignInByMPT(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationSignInByMPTEvent implements AuthorizationEvent {
  const factory _$AuthorizationSignInByMPTEvent(
      {required final bool isSilent,
      required final AuthType authType}) = _$_$AuthorizationSignInByMPTEvent;

  bool get isSilent => throw _privateConstructorUsedError;
  AuthType get authType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$AuthorizationSignInByMPTEventCopyWith<_$_$AuthorizationSignInByMPTEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthorizationAddingAdditionalInformationEventCopyWith<
    $Res> {
  factory _$$_$AuthorizationAddingAdditionalInformationEventCopyWith(
          _$_$AuthorizationAddingAdditionalInformationEvent value,
          $Res Function(_$_$AuthorizationAddingAdditionalInformationEvent)
              then) =
      __$$_$AuthorizationAddingAdditionalInformationEventCopyWithImpl<$Res>;
  $Res call(
      {String name, String lastname, GenderType gender, Uint8List? imagePath});
}

/// @nodoc
class __$$_$AuthorizationAddingAdditionalInformationEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements
        _$$_$AuthorizationAddingAdditionalInformationEventCopyWith<$Res> {
  __$$_$AuthorizationAddingAdditionalInformationEventCopyWithImpl(
      _$_$AuthorizationAddingAdditionalInformationEvent _value,
      $Res Function(_$_$AuthorizationAddingAdditionalInformationEvent) _then)
      : super(
            _value,
            (v) =>
                _then(v as _$_$AuthorizationAddingAdditionalInformationEvent));

  @override
  _$_$AuthorizationAddingAdditionalInformationEvent get _value =>
      super._value as _$_$AuthorizationAddingAdditionalInformationEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastname = freezed,
    Object? gender = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_$AuthorizationAddingAdditionalInformationEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_$AuthorizationAddingAdditionalInformationEvent
    with DiagnosticableTreeMixin
    implements _$AuthorizationAddingAdditionalInformationEvent {
  const _$_$AuthorizationAddingAdditionalInformationEvent(
      {required this.name,
      required this.lastname,
      required this.gender,
      this.imagePath});

  @override
  final String name;
  @override
  final String lastname;
  @override
  final GenderType gender;
  @override
  final Uint8List? imagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationEvent.AddingAdditionalInformation(name: $name, lastname: $lastname, gender: $gender, imagePath: $imagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthorizationEvent.AddingAdditionalInformation'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('imagePath', imagePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationAddingAdditionalInformationEvent &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$$_$AuthorizationAddingAdditionalInformationEventCopyWith<
          _$_$AuthorizationAddingAdditionalInformationEvent>
      get copyWith =>
          __$$_$AuthorizationAddingAdditionalInformationEventCopyWithImpl<
                  _$_$AuthorizationAddingAdditionalInformationEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, AuthType authType)
        SignInByEmail,
    required TResult Function(bool isSilent, AuthType authType) SignInByMPT,
    required TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)
        AddingAdditionalInformation,
  }) {
    return AddingAdditionalInformation(name, lastname, gender, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, AuthType authType)?
        SignInByEmail,
    TResult Function(bool isSilent, AuthType authType)? SignInByMPT,
    TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)?
        AddingAdditionalInformation,
  }) {
    return AddingAdditionalInformation?.call(name, lastname, gender, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, AuthType authType)?
        SignInByEmail,
    TResult Function(bool isSilent, AuthType authType)? SignInByMPT,
    TResult Function(String name, String lastname, GenderType gender,
            Uint8List? imagePath)?
        AddingAdditionalInformation,
    required TResult orElse(),
  }) {
    if (AddingAdditionalInformation != null) {
      return AddingAdditionalInformation(name, lastname, gender, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignInByEmailEvent value)
        SignInByEmail,
    required TResult Function(_$AuthorizationSignInByMPTEvent value)
        SignInByMPT,
    required TResult Function(
            _$AuthorizationAddingAdditionalInformationEvent value)
        AddingAdditionalInformation,
  }) {
    return AddingAdditionalInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignInByEmailEvent value)? SignInByEmail,
    TResult Function(_$AuthorizationSignInByMPTEvent value)? SignInByMPT,
    TResult Function(_$AuthorizationAddingAdditionalInformationEvent value)?
        AddingAdditionalInformation,
  }) {
    return AddingAdditionalInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignInByEmailEvent value)? SignInByEmail,
    TResult Function(_$AuthorizationSignInByMPTEvent value)? SignInByMPT,
    TResult Function(_$AuthorizationAddingAdditionalInformationEvent value)?
        AddingAdditionalInformation,
    required TResult orElse(),
  }) {
    if (AddingAdditionalInformation != null) {
      return AddingAdditionalInformation(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationAddingAdditionalInformationEvent
    implements AuthorizationEvent {
  const factory _$AuthorizationAddingAdditionalInformationEvent(
          {required final String name,
          required final String lastname,
          required final GenderType gender,
          final Uint8List? imagePath}) =
      _$_$AuthorizationAddingAdditionalInformationEvent;

  String get name => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  GenderType get gender => throw _privateConstructorUsedError;
  Uint8List? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$AuthorizationAddingAdditionalInformationEventCopyWith<
          _$_$AuthorizationAddingAdditionalInformationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  final AuthorizationState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationState) _then;
}

/// @nodoc
abstract class _$$_$AuthorizationSignedInCopyWith<$Res> {
  factory _$$_$AuthorizationSignedInCopyWith(_$_$AuthorizationSignedIn value,
          $Res Function(_$_$AuthorizationSignedIn) then) =
      __$$_$AuthorizationSignedInCopyWithImpl<$Res>;
  $Res call({UserModel userAccount});
}

/// @nodoc
class __$$_$AuthorizationSignedInCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_$AuthorizationSignedInCopyWith<$Res> {
  __$$_$AuthorizationSignedInCopyWithImpl(_$_$AuthorizationSignedIn _value,
      $Res Function(_$_$AuthorizationSignedIn) _then)
      : super(_value, (v) => _then(v as _$_$AuthorizationSignedIn));

  @override
  _$_$AuthorizationSignedIn get _value =>
      super._value as _$_$AuthorizationSignedIn;

  @override
  $Res call({
    Object? userAccount = freezed,
  }) {
    return _then(_$_$AuthorizationSignedIn(
      userAccount: userAccount == freezed
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_$AuthorizationSignedIn
    with DiagnosticableTreeMixin
    implements _$AuthorizationSignedIn {
  const _$_$AuthorizationSignedIn({required this.userAccount});

  @override
  final UserModel userAccount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationState.SignedIn(userAccount: $userAccount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthorizationState.SignedIn'))
      ..add(DiagnosticsProperty('userAccount', userAccount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationSignedIn &&
            const DeepCollectionEquality()
                .equals(other.userAccount, userAccount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userAccount));

  @JsonKey(ignore: true)
  @override
  _$$_$AuthorizationSignedInCopyWith<_$_$AuthorizationSignedIn> get copyWith =>
      __$$_$AuthorizationSignedInCopyWithImpl<_$_$AuthorizationSignedIn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) {
    return SignedIn(userAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) {
    return SignedIn?.call(userAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) {
    if (SignedIn != null) {
      return SignedIn(userAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) {
    return SignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) {
    return SignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) {
    if (SignedIn != null) {
      return SignedIn(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationSignedIn implements AuthorizationState {
  const factory _$AuthorizationSignedIn(
      {required final UserModel userAccount}) = _$_$AuthorizationSignedIn;

  UserModel get userAccount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$AuthorizationSignedInCopyWith<_$_$AuthorizationSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthorizationNotFullInformationCopyWith<$Res> {
  factory _$$_$AuthorizationNotFullInformationCopyWith(
          _$_$AuthorizationNotFullInformation value,
          $Res Function(_$_$AuthorizationNotFullInformation) then) =
      __$$_$AuthorizationNotFullInformationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthorizationNotFullInformationCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_$AuthorizationNotFullInformationCopyWith<$Res> {
  __$$_$AuthorizationNotFullInformationCopyWithImpl(
      _$_$AuthorizationNotFullInformation _value,
      $Res Function(_$_$AuthorizationNotFullInformation) _then)
      : super(_value, (v) => _then(v as _$_$AuthorizationNotFullInformation));

  @override
  _$_$AuthorizationNotFullInformation get _value =>
      super._value as _$_$AuthorizationNotFullInformation;
}

/// @nodoc

class _$_$AuthorizationNotFullInformation
    with DiagnosticableTreeMixin
    implements _$AuthorizationNotFullInformation {
  const _$_$AuthorizationNotFullInformation();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationState.notFullInformation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AuthorizationState.notFullInformation'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationNotFullInformation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) {
    return notFullInformation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) {
    return notFullInformation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) {
    if (notFullInformation != null) {
      return notFullInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) {
    return notFullInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) {
    return notFullInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) {
    if (notFullInformation != null) {
      return notFullInformation(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationNotFullInformation implements AuthorizationState {
  const factory _$AuthorizationNotFullInformation() =
      _$_$AuthorizationNotFullInformation;
}

/// @nodoc
abstract class _$$_$AuthorizationSignedOutCopyWith<$Res> {
  factory _$$_$AuthorizationSignedOutCopyWith(_$_$AuthorizationSignedOut value,
          $Res Function(_$_$AuthorizationSignedOut) then) =
      __$$_$AuthorizationSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthorizationSignedOutCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_$AuthorizationSignedOutCopyWith<$Res> {
  __$$_$AuthorizationSignedOutCopyWithImpl(_$_$AuthorizationSignedOut _value,
      $Res Function(_$_$AuthorizationSignedOut) _then)
      : super(_value, (v) => _then(v as _$_$AuthorizationSignedOut));

  @override
  _$_$AuthorizationSignedOut get _value =>
      super._value as _$_$AuthorizationSignedOut;
}

/// @nodoc

class _$_$AuthorizationSignedOut
    with DiagnosticableTreeMixin
    implements _$AuthorizationSignedOut {
  const _$_$AuthorizationSignedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationState.SignedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthorizationState.SignedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) {
    return SignedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) {
    return SignedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) {
    if (SignedOut != null) {
      return SignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) {
    return SignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) {
    return SignedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) {
    if (SignedOut != null) {
      return SignedOut(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationSignedOut implements AuthorizationState {
  const factory _$AuthorizationSignedOut() = _$_$AuthorizationSignedOut;
}

/// @nodoc
abstract class _$$_$AuthorizationErroredStateCopyWith<$Res> {
  factory _$$_$AuthorizationErroredStateCopyWith(
          _$_$AuthorizationErroredState value,
          $Res Function(_$_$AuthorizationErroredState) then) =
      __$$_$AuthorizationErroredStateCopyWithImpl<$Res>;
  $Res call({String errormessage});
}

/// @nodoc
class __$$_$AuthorizationErroredStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_$AuthorizationErroredStateCopyWith<$Res> {
  __$$_$AuthorizationErroredStateCopyWithImpl(
      _$_$AuthorizationErroredState _value,
      $Res Function(_$_$AuthorizationErroredState) _then)
      : super(_value, (v) => _then(v as _$_$AuthorizationErroredState));

  @override
  _$_$AuthorizationErroredState get _value =>
      super._value as _$_$AuthorizationErroredState;

  @override
  $Res call({
    Object? errormessage = freezed,
  }) {
    return _then(_$_$AuthorizationErroredState(
      errormessage: errormessage == freezed
          ? _value.errormessage
          : errormessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$AuthorizationErroredState
    with DiagnosticableTreeMixin
    implements _$AuthorizationErroredState {
  const _$_$AuthorizationErroredState({required this.errormessage});

  @override
  final String errormessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationState.Error(errormessage: $errormessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthorizationState.Error'))
      ..add(DiagnosticsProperty('errormessage', errormessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationErroredState &&
            const DeepCollectionEquality()
                .equals(other.errormessage, errormessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errormessage));

  @JsonKey(ignore: true)
  @override
  _$$_$AuthorizationErroredStateCopyWith<_$_$AuthorizationErroredState>
      get copyWith => __$$_$AuthorizationErroredStateCopyWithImpl<
          _$_$AuthorizationErroredState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) {
    return Error(errormessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) {
    return Error?.call(errormessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error(errormessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) {
    return Error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) {
    return Error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationErroredState implements AuthorizationState {
  const factory _$AuthorizationErroredState(
      {required final String errormessage}) = _$_$AuthorizationErroredState;

  String get errormessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$AuthorizationErroredStateCopyWith<_$_$AuthorizationErroredState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthorizationInitialStateCopyWith<$Res> {
  factory _$$_$AuthorizationInitialStateCopyWith(
          _$_$AuthorizationInitialState value,
          $Res Function(_$_$AuthorizationInitialState) then) =
      __$$_$AuthorizationInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthorizationInitialStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_$AuthorizationInitialStateCopyWith<$Res> {
  __$$_$AuthorizationInitialStateCopyWithImpl(
      _$_$AuthorizationInitialState _value,
      $Res Function(_$_$AuthorizationInitialState) _then)
      : super(_value, (v) => _then(v as _$_$AuthorizationInitialState));

  @override
  _$_$AuthorizationInitialState get _value =>
      super._value as _$_$AuthorizationInitialState;
}

/// @nodoc

class _$_$AuthorizationInitialState
    with DiagnosticableTreeMixin
    implements _$AuthorizationInitialState {
  const _$_$AuthorizationInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationState.InitialState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthorizationState.InitialState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) {
    return InitialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) {
    return InitialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) {
    if (InitialState != null) {
      return InitialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) {
    return InitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) {
    return InitialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) {
    if (InitialState != null) {
      return InitialState(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationInitialState implements AuthorizationState {
  const factory _$AuthorizationInitialState() = _$_$AuthorizationInitialState;
}

/// @nodoc
abstract class _$$_$AuthorizationLoadingStateCopyWith<$Res> {
  factory _$$_$AuthorizationLoadingStateCopyWith(
          _$_$AuthorizationLoadingState value,
          $Res Function(_$_$AuthorizationLoadingState) then) =
      __$$_$AuthorizationLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthorizationLoadingStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_$AuthorizationLoadingStateCopyWith<$Res> {
  __$$_$AuthorizationLoadingStateCopyWithImpl(
      _$_$AuthorizationLoadingState _value,
      $Res Function(_$_$AuthorizationLoadingState) _then)
      : super(_value, (v) => _then(v as _$_$AuthorizationLoadingState));

  @override
  _$_$AuthorizationLoadingState get _value =>
      super._value as _$_$AuthorizationLoadingState;
}

/// @nodoc

class _$_$AuthorizationLoadingState
    with DiagnosticableTreeMixin
    implements _$AuthorizationLoadingState {
  const _$_$AuthorizationLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationState.LoadingState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthorizationState.LoadingState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) {
    return LoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) {
    return LoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) {
    if (LoadingState != null) {
      return LoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) {
    return LoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) {
    return LoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) {
    if (LoadingState != null) {
      return LoadingState(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationLoadingState implements AuthorizationState {
  const factory _$AuthorizationLoadingState() = _$_$AuthorizationLoadingState;
}

/// @nodoc
abstract class _$$_$AuthorizationEmailNotVerifiedStateStateCopyWith<$Res> {
  factory _$$_$AuthorizationEmailNotVerifiedStateStateCopyWith(
          _$_$AuthorizationEmailNotVerifiedStateState value,
          $Res Function(_$_$AuthorizationEmailNotVerifiedStateState) then) =
      __$$_$AuthorizationEmailNotVerifiedStateStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthorizationEmailNotVerifiedStateStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_$AuthorizationEmailNotVerifiedStateStateCopyWith<$Res> {
  __$$_$AuthorizationEmailNotVerifiedStateStateCopyWithImpl(
      _$_$AuthorizationEmailNotVerifiedStateState _value,
      $Res Function(_$_$AuthorizationEmailNotVerifiedStateState) _then)
      : super(_value,
            (v) => _then(v as _$_$AuthorizationEmailNotVerifiedStateState));

  @override
  _$_$AuthorizationEmailNotVerifiedStateState get _value =>
      super._value as _$_$AuthorizationEmailNotVerifiedStateState;
}

/// @nodoc

class _$_$AuthorizationEmailNotVerifiedStateState
    with DiagnosticableTreeMixin
    implements _$AuthorizationEmailNotVerifiedStateState {
  const _$_$AuthorizationEmailNotVerifiedStateState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationState.EmailNotVerified()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AuthorizationState.EmailNotVerified'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationEmailNotVerifiedStateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) {
    return EmailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) {
    return EmailNotVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) {
    if (EmailNotVerified != null) {
      return EmailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) {
    return EmailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) {
    return EmailNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) {
    if (EmailNotVerified != null) {
      return EmailNotVerified(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationEmailNotVerifiedStateState
    implements AuthorizationState {
  const factory _$AuthorizationEmailNotVerifiedStateState() =
      _$_$AuthorizationEmailNotVerifiedStateState;
}

/// @nodoc
abstract class _$$_$AuthorizationEmailVerifiedStateStateCopyWith<$Res> {
  factory _$$_$AuthorizationEmailVerifiedStateStateCopyWith(
          _$_$AuthorizationEmailVerifiedStateState value,
          $Res Function(_$_$AuthorizationEmailVerifiedStateState) then) =
      __$$_$AuthorizationEmailVerifiedStateStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthorizationEmailVerifiedStateStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$$_$AuthorizationEmailVerifiedStateStateCopyWith<$Res> {
  __$$_$AuthorizationEmailVerifiedStateStateCopyWithImpl(
      _$_$AuthorizationEmailVerifiedStateState _value,
      $Res Function(_$_$AuthorizationEmailVerifiedStateState) _then)
      : super(_value,
            (v) => _then(v as _$_$AuthorizationEmailVerifiedStateState));

  @override
  _$_$AuthorizationEmailVerifiedStateState get _value =>
      super._value as _$_$AuthorizationEmailVerifiedStateState;
}

/// @nodoc

class _$_$AuthorizationEmailVerifiedStateState
    with DiagnosticableTreeMixin
    implements _$AuthorizationEmailVerifiedStateState {
  const _$_$AuthorizationEmailVerifiedStateState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthorizationState.EmailVerified()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthorizationState.EmailVerified'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthorizationEmailVerifiedStateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userAccount) SignedIn,
    required TResult Function() notFullInformation,
    required TResult Function() SignedOut,
    required TResult Function(String errormessage) Error,
    required TResult Function() InitialState,
    required TResult Function() LoadingState,
    required TResult Function() EmailNotVerified,
    required TResult Function() EmailVerified,
  }) {
    return EmailVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
  }) {
    return EmailVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userAccount)? SignedIn,
    TResult Function()? notFullInformation,
    TResult Function()? SignedOut,
    TResult Function(String errormessage)? Error,
    TResult Function()? InitialState,
    TResult Function()? LoadingState,
    TResult Function()? EmailNotVerified,
    TResult Function()? EmailVerified,
    required TResult orElse(),
  }) {
    if (EmailVerified != null) {
      return EmailVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthorizationSignedIn value) SignedIn,
    required TResult Function(_$AuthorizationNotFullInformation value)
        notFullInformation,
    required TResult Function(_$AuthorizationSignedOut value) SignedOut,
    required TResult Function(_$AuthorizationErroredState value) Error,
    required TResult Function(_$AuthorizationInitialState value) InitialState,
    required TResult Function(_$AuthorizationLoadingState value) LoadingState,
    required TResult Function(_$AuthorizationEmailNotVerifiedStateState value)
        EmailNotVerified,
    required TResult Function(_$AuthorizationEmailVerifiedStateState value)
        EmailVerified,
  }) {
    return EmailVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
  }) {
    return EmailVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthorizationSignedIn value)? SignedIn,
    TResult Function(_$AuthorizationNotFullInformation value)?
        notFullInformation,
    TResult Function(_$AuthorizationSignedOut value)? SignedOut,
    TResult Function(_$AuthorizationErroredState value)? Error,
    TResult Function(_$AuthorizationInitialState value)? InitialState,
    TResult Function(_$AuthorizationLoadingState value)? LoadingState,
    TResult Function(_$AuthorizationEmailNotVerifiedStateState value)?
        EmailNotVerified,
    TResult Function(_$AuthorizationEmailVerifiedStateState value)?
        EmailVerified,
    required TResult orElse(),
  }) {
    if (EmailVerified != null) {
      return EmailVerified(this);
    }
    return orElse();
  }
}

abstract class _$AuthorizationEmailVerifiedStateState
    implements AuthorizationState {
  const factory _$AuthorizationEmailVerifiedStateState() =
      _$_$AuthorizationEmailVerifiedStateState;
}
