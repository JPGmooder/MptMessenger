part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.SignInByEmail(
      {required String email,
      required String password,
      required AuthType authType}) = _$AuthorizationSignInByEmailEvent;
  const factory AuthorizationEvent.SignInByMPT(
      {required bool isSilent,
      required AuthType authType}) = _$AuthorizationSignInByMPTEvent;
  const factory AuthorizationEvent.AddingAdditionalInformation(
      {required String name,
      required String lastname,
      required GenderType gender,
      Uint8List? imagePath}) = _$AuthorizationAddingAdditionalInformationEvent;
}
