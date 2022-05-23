import 'dart:developer';

import 'package:mptmessenger/logic/searcher/searcher_provider.dart';
import 'package:mptmessenger/model/another_user.dart';
import 'package:mptmessenger/model/user_model.dart';

class SearcherRepository {
  static Future<List<AnotherUser>?> getUsersByTag(String tag) async {
    var loadedUsers = await SearcherProvider.getUsersByTag(tag).get();

    List<AnotherUser> usersToReturn = [];
    for (var user in loadedUsers.docs) {
      log(user.toString());
      usersToReturn.add(AnotherUser.fromMap(user.data(), user.id));
    }
    usersToReturn = usersToReturn
        .where((element) =>
            element.tag.contains(tag) &&
            element.tag != UserModel().tag &&
            UserModel()
                .blockedUsers
                .where((_element) => _element.id == element.uID)
                .isEmpty)
        .toList();
    return usersToReturn.isEmpty ? null : usersToReturn;
  }
}
