
///TODO:Must complete this class
class Auth {
  Auth() {
  }


  bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  set isLoaded(bool val) => _isLoaded = val;

  bool _isLogin = false;

  bool get isLogin => _isLogin;

  set isLogin(bool val) => _isLogin = val;

  Future<void> checkUserLogin() async {
    ///TODO "
  }

  Future<void> fetchUser() async {
    setDone();
  }

  void setDone() {
    isLoaded = true;
  }
}
