import 'package:shared_preferences/shared_preferences.dart';
import 'package:themes/app/interfaces/shared_local_storage_interface.dart';

class SharedLocalStorageService implements ISharedLocalStorage {

  

  @override
  Future delete(String key) async {
    var shared = await SharedPreferences.getInstance();
    shared.remove(key);
  }

  @override
  Future get(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  @override
  Future put(String key, value) async {
    var shared = await SharedPreferences.getInstance();
    // TODO: IMPLEMENTAR OS IFS PARA SABER QUAL TIPO USAR.
    shared.setBool(key, value);
  }

}