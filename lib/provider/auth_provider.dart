import 'dart:convert';

import 'package:deltax/model/user_model.dart';
import 'package:deltax/preference/user_preference.dart';
import 'package:deltax/util/http_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


enum Status {
  notRegistered,
  registering,
  registered,
  notLogin,
  loggingIn,
  loggedIn,
  notLoading,
  loading,
  loaded,
}

class AuthProvider with ChangeNotifier {
  Status _registeredStatus = Status.notRegistered;

  Status _logginStatus = Status.notLogin;

  Status get registeredStatus => _registeredStatus;

  Status get logginStatus => _logginStatus;

  set registeredStatus(Status value) {
    registeredStatus = value;
  }

  Future<Map<String, dynamic>> login(String email, String password) async {
    final Map<String, dynamic> loginBody = {
      "email": email,
      "password": password
    };

    _logginStatus = Status.loggingIn;
    notifyListeners();

    var response = await post(Uri.parse(HttpService.login),
            body: jsonEncode(loginBody),
            headers: {"content-Type": "application/json"})
        .then(onValue)
        .catchError(onError);

    _logginStatus = Status.loggedIn;
    notifyListeners();

    return response;
  }

  Future<Map<String, dynamic>> register(
      String name, String email, String password) async {
    final Map<String, dynamic> registeredData = {
      "name": name,
      "email": email,
      "password": password
    };

    _registeredStatus = Status.registering;
    notifyListeners();

    var response = await post(Uri.parse(HttpService.register),
            body: json.encode(registeredData),
            headers: {'content-Type': "application/json"})
        .then(onValue)
        .catchError(onError);

    _registeredStatus = Status.registered;
    notifyListeners();

    return response;
  }

  static Future onValue(Response response) async {
    var result;

    final Map<String, dynamic> responseData = json.decode(response.body);

    if (response.statusCode == 200) {
      if (responseData.containsKey('validation_errors')) {
        result = {
          'status': 500,
          'message': responseData['validation_errors'].toString(),
          'data': null
        };
      } else {
        var userData = responseData;

        User user = User.fromJson(userData);

        UserPreference().saveRegisteredData(user);

        result = {
          "status": 200,
          "message": responseData["message"],
          'data': user
        };
      }
    }
    return result;
  }

  static onError(error) {
    return {
      'status': false,
      'message': "Unexpected Error Encountered!",
      'data': error
    };
  }
}