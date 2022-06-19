// import 'package:flutter/cupertino.dart';

import 'package:aprendendo_arquitetura/app/services/shared_local_storage_service.dart';
import 'package:aprendendo_arquitetura/app/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class AppController{

  static final AppController instance = AppController._(); // Singleton para instanciar o controller na aplicação
  AppController._() {
    changeThemeViewModel.init(); 
  } // construtor privado: pode acessar a instancia apenas dentro da classe específica!


  final ChangeThemeViewModel changeThemeViewModel = ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;

  ValueNotifier<bool> get themeSwitch => changeThemeViewModel.config.themeSwitch;
}
