import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_exceptions.freezed.dart';
@freezed
class FirebaseFirestoreException
    with _$FirebaseFirestoreException
    implements Exception {
  const factory FirebaseFirestoreException.accountDidntPicked() =
      _$FirebaseFirestoreAccountDidntPickedException;
  const factory FirebaseFirestoreException.emailNotVerified() =
      _$FirebaseFirestoreEmailNotVerifiedException;
   const factory FirebaseFirestoreException.informationIsNotFullEntered() =
      _$FirebaseFirestoreinformationIsNotFullEnteredException;
}

