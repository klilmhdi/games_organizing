import 'package:games_organizing/features/auth/model/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PrKeys {
  isFirstOpen,
  loggedIn,
  id,
  firstName,
  lastName,
  email,
  userAddress,
  userImage,
  token,
  password,
}

class SharedPrefController {
  SharedPrefController._();

  static SharedPrefController? _instance;

  late SharedPreferences? _sharedPreferences;

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._();
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  T? getValueFor<T>(String key) {
    if (_sharedPreferences!.containsKey(key)) {
      return _sharedPreferences!.get(key) as T;
    }
    return null;
  }

  Future<bool> setString({
    required String key,
    required String value,
  }) async {
    return await _sharedPreferences!.setString(key, value);
  }

  Future<void> saveUser(
      {required Data user,
      required String password,
      bool rememberMe = false}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(PrKeys.loggedIn.name, rememberMe);
    await prefs.setInt(PrKeys.id.name, user.id);
    await prefs.setString(PrKeys.firstName.name, user.name.split(' ')[0]);
    await prefs.setString(PrKeys.lastName.name, user.name.split(' ')[1]);
    await prefs.setString(PrKeys.email.name, user.email);
    await prefs.setString(PrKeys.userAddress.name, user.location);
    await prefs.setString(PrKeys.userImage.name, user.images ?? '');
    await prefs.setString(PrKeys.token.name, "Bearer ${user.token}");
    await prefs.setString(PrKeys.password.name, password);
  }

  Future<void> setIsFirstOpen() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(PrKeys.isFirstOpen.name, false);
  }

  void clear() async {
    _sharedPreferences!.clear();
  }
}
