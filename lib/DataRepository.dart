import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
class DataRepository {

  static String firstName = "";
  static String emailAddress ="";
  static String lastName = "";
  static String phoneNumber = "";
  static String login = "Rosa";

  static void loadData(){
    EncryptedSharedPreferences prefs = EncryptedSharedPreferences();
    prefs.getString("FirstName").then((fName) { firstName = fName; });
    prefs.getString("LastName").then((lName) { lastName = lName; });
  }

  static void saveData(){
    EncryptedSharedPreferences prefs = EncryptedSharedPreferences();
    prefs.setString("FirstName", firstName);
    prefs.setString("LastName", lastName);
  }
}