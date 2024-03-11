
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:melchi_and_pet/screen/login/kakao_login_manager.dart';

class NaverLoginManager {
  LoginPlatform loginPlatform = LoginPlatform.none;

  Future<void> processNaver() async {
    final NaverLoginResult result = await FlutterNaverLogin.logIn();
    print(result.accessToken);
    print(result.account);
  }
}