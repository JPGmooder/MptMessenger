part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.SignedIn({required UserModel userAccount}) =
      _$AuthorizationSignedIn;
  const factory AuthorizationState.notFullInformation() =
      _$AuthorizationNotFullInformation;
      const factory AuthorizationState.SignedOut()  =
      _$AuthorizationSignedOut;
      const factory AuthorizationState.Error({required String errormessage}) =
      _$AuthorizationErroredState;
      const factory AuthorizationState.InitialState() =
      _$AuthorizationInitialState;
      const factory AuthorizationState.LoadingState() =
      _$AuthorizationLoadingState;
       const factory AuthorizationState.EmailNotVerified() =
      _$AuthorizationEmailNotVerifiedStateState;
      const factory AuthorizationState.EmailVerified() =
      _$AuthorizationEmailVerifiedStateState;

}
