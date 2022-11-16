import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:registertask/services/auth_services.dart';

class AuthProvider extends ChangeNotifier {
  final authSrevice = AuthService();
  final fb = FacebookLogin();

  Stream<User?> get currentUser => authSrevice.currentUser;
  //notifyListeners();

  loginFacebook() async {
    print("Starting Facebook Login");
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

    switch (res.status) {
      case FacebookLoginStatus.success:
        print("It worked");
        // Get Token
        final FacebookAccessToken? fbToken = res.accessToken;

        // convert to Auth credential
        final AuthCredential credential =
            FacebookAuthProvider.credential(fbToken!.token);

        // User Credential to sign in with firebase
        final result = await authSrevice.signInWithCredential(credential);
        print("${result.user!.displayName} is now logged in");

        break;
      case FacebookLoginStatus.cancel:
        print("The user cancelled the login");

        break;
      case FacebookLoginStatus.error:
        print("There was an error");
        break;
    }
    notifyListeners();
  }
}
