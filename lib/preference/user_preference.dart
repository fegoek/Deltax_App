import 'package:deltax/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserPreference {
  void saveRegisteredData (User userData) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("name", userData.user);
    pref.setString("token", userData.token);
  //  pref.setString("email", userData.email);
  }
    Future<User> getUser() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();

    String name = pref.getString("name").toString();
    String token = pref.getString("token").toString();
//String email = pref.getString("email").toString();

    return User(user: name, token: token, );
  }

  void removeUser() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('name');
    pref.remove('token');
     // pref.remove('email');
  }
}