import 'package:flutter/cupertino.dart';
import 'package:signup_with_provider/model/user.dart';

class AuthPrivder extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  void signUp({
    required String email,
    required String name,
    required String password,
    required String imagePath,
  }) {
    _user = User(
        email: email, imagePath: imagePath, password: password, name: name);
    notifyListeners();
  }

  bool login({
    required String email,
    required String password,
  }) {
    print("o");
    if (_user != null) {
      if (_user!.email == email && _user!.password == password) {
        print("dil");
        return true;
      }
    }
    return false;
  }
}
