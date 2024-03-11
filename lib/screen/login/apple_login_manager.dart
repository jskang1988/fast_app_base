import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleLoginManager {
  Future<void> processApple() async {
    try {
      final AuthorizationCredentialAppleID credential =
      await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        webAuthenticationOptions: WebAuthenticationOptions(
          clientId: "Apple Developer 에서 설정한 Service ID",
          redirectUri: Uri.parse(
            "Apple Developer 에서 설정한 redirectUri",
          ),
        ),
      );

      print('credential.state = $credential');
      print('credential.state = ${credential.email}');
      print('credential.state = ${credential.userIdentifier}');

    } catch (error) {
      print('error = $error');
    }
  }
}