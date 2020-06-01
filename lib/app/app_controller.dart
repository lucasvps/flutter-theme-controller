import 'package:mobx/mobx.dart';
import 'package:themes/app/stores/change_theme_store.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final ChangeThemeStore changeThemeStore = ChangeThemeStore();

  changeDarkStatus() => changeThemeStore.changeDarkStatus();

  bool get getDarkStatus => changeThemeStore.darkStatus;
 


}
