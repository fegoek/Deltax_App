import 'package:deltax/model/user_model.dart';
import 'package:flutter/material.dart';


class UserProvider with ChangeNotifier {
  var changeName = "";

  var token = "";

  //var email = "";

  void setUser(User name) {
   // email = name.email;
    changeName = name.user;
    token = name.token;
    notifyListeners();
  }
}