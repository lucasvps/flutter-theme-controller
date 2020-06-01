import 'package:mobx/mobx.dart';

part 'change_theme_store.g.dart';

class ChangeThemeStore = _ChangeThemeStoreBase with _$ChangeThemeStore;

abstract class _ChangeThemeStoreBase with Store {
  @observable
  bool darkStatus = false;

  @action
  changeDarkStatus(){
    darkStatus = !darkStatus;
  }
}