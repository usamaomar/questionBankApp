import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class QuestionBankAuthUser {
  QuestionBankAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserModelStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<QuestionBankAuthUser> questionBankAuthUserSubject =
    BehaviorSubject.seeded(QuestionBankAuthUser(loggedIn: false));
Stream<QuestionBankAuthUser> questionBankAuthUserStream() =>
    questionBankAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
