class AuthService {
  static Future<bool> signUp(String name, String email, String password) async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  static Future<bool> signIn(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }
}
