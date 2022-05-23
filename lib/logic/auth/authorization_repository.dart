part of 'authorization_bloc.dart';

class AuthorizationRepository {
  static Future<void> createNewUser(
      String name, String lastname, Uint8List? image, GenderType gender) async {
    UserModel(
        blockedUsers: [],
        friends: [],
        invited: [],
        lastName: lastname,
        gender: gender,
        name: name,
        photo:
            image == null && FirebaseAuth.instance.currentUser!.photoURL != null
                ? FirebaseAuth.instance.currentUser!.photoURL
                : await Firestorage.loadUsersPhoto(image),
        role: Role.defaultUser,
        tag: null,
        status: UserStatus(
            content: "", lastVisitTime: DateTime.now(), status: Status.online));
    await Firestore.createNewUser(UserModel());
  }

  static Future<void> SignUserByEmail(
      {required String email,
      required String password,
      AuthType atype = AuthType.authorization}) async {
    var signedUser =
        await AuthorizationProvider.signInViaEmail(email, password, atype);
    if (!signedUser!.user!.emailVerified) {
      signedUser.user!.sendEmailVerification();
      throw const FirebaseFirestoreException.emailNotVerified();
    }
    await _signing(signedUser);

    await SharedPreferencesLib()
        .loadUserIntoSystem(false, email: email, password: password);
  }

  static Future<void> signUserByMPT({required bool isSilent}) async {
    final signedUser = await AuthorizationProvider.signInViaMPT(false);
    if (signedUser == null) {
      throw const FirebaseFirestoreException.accountDidntPicked();
    } else if (!signedUser.email.endsWith("@mpt.ru")) {
      await GoogleSignIn().signOut();
      throw Exception(
          "Выбранная электронная почта не принадлежит домену @mpt.ru, повторите попытку");
    }

    final currentUser = await FirebaseAuth.instance.signInWithCredential(
        GoogleAuthProvider.credential(
            accessToken: (await signedUser.authentication).accessToken,
            idToken: (await signedUser.authentication).idToken));
    await _signing(currentUser);
    await SharedPreferencesLib().loadUserIntoSystem(true);
  }

  static Future<void> _signing(UserCredential user) async {
    var findedUser = await Firestore.isUserExists(user.user!.uid);
    if (findedUser.isNotEmpty) {
      var data = findedUser.first.data();
      
      var key = await FirebaseMessaging.instance.getToken(
          vapidKey: kIsWeb
              ? "BGbfM0HhV1h7PR-3ZY2K156PJZVea8v0DRkjhNUlUwt6whyBGuYrpSLSLuLcAVvMn4QDlTk3sJqPgkTcqSw8QLs"
              : null);
      UserModel.fromMap(data as Map<String, dynamic>);
      if (!UserModel().notificationTokens.contains(key)) {
        UserModel().notificationTokens.add(key!);
        await findedUser.first.reference.update(UserModel().toMap());
      }
    } else {
      throw const FirebaseFirestoreException.informationIsNotFullEntered();
    }
  }
}
