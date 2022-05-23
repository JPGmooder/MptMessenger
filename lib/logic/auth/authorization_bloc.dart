import 'dart:developer';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mptmessenger/logic/custom/custom_exceptions.dart';
import 'package:mptmessenger/logic/firestorage/firestorge.dart';
import 'package:mptmessenger/logic/firestore/firestore.dart';
import 'package:mptmessenger/logic/shared_preferences/shared_preferences.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mptmessenger/view/auth/auth_enterinformation_screen.dart';
import 'package:mptmessenger/view/auth/auth_screen.dart';
part 'authorization_events.dart';
part 'authorization_states.dart';
part 'authorization_repository.dart';
part "authorization_bloc.freezed.dart";
part 'authorization_provider.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(AuthorizationState.InitialState()) {
    on<AuthorizationEvent>((event, emit) async {
      emit(const AuthorizationState.LoadingState());
      try {
        await event.when(
          AddingAdditionalInformation: (name, fname, gender, image) async {
            await AuthorizationRepository.createNewUser(
              name,
              fname,
              image,
              gender,
            );
            emit(AuthorizationState.SignedIn(userAccount: UserModel()));
          },
          SignInByEmail: (email, password, authType) async {
            var authentificatedUser =
                await AuthorizationRepository.SignUserByEmail(
                    email: email, password: password, atype: authType);
            emit(AuthorizationState.SignedIn(userAccount: UserModel()));
          },
          SignInByMPT: (silently, authType) async {
            var authentificatedUser =
                await AuthorizationRepository.signUserByMPT(isSilent: silently);
            emit(AuthorizationState.SignedIn(userAccount: UserModel()));
          },
        );
      } on FirebaseFirestoreException catch (exception) {
        exception.maybeWhen(
            informationIsNotFullEntered: () =>
                emit(const AuthorizationState.notFullInformation()),
            emailNotVerified: () =>
                emit(const AuthorizationState.EmailNotVerified()),
            orElse: () => print(exception.toString()));
      } on PlatformException {
        emit(AuthorizationState.InitialState());
      } on FirebaseAuthException catch (authException) {
        print(authException.message);
        emit(AuthorizationState.Error(
            errormessage: authException.message.toString()));
      } on FirebaseException catch (firebaseException) {
        print(firebaseException);
      } catch (exception) {
        print(exception.toString());
      }
    });
  }
}
