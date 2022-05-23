part of 'authorization_bloc.dart';

class AuthorizationProvider {
  static Future<GoogleSignInAccount?> signInViaMPT(bool isSilent) async =>
      isSilent
          ? await GoogleSignIn().signInSilently()
          : await GoogleSignIn().signIn();

  static Future<UserCredential?> signInViaEmail(
          String email, String password, AuthType authType) async =>
      authType == AuthType.authorization
          ? await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password)
          : await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: password);
}
