import 'package:themes/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:themes/app/app_widget.dart';
import 'package:themes/app/interfaces/shared_local_storage_interface.dart';
import 'package:themes/app/modules/home/home_module.dart';
import 'package:themes/app/services/shared_local_storage_service.dart';
import 'package:themes/app/stores/change_theme_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        
        Bind((i) => AppController(i.get())),
        Bind((i) => ChangeThemeStore(i.get())),
        Bind<ISharedLocalStorage>((i) => SharedLocalStorageService())
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
