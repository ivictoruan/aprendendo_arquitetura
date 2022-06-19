// import 'package:flutter/cupertino.dart';

import 'package:aprendendo_arquitetura/app/models/appconfig_model.dart';
import 'package:flutter/cupertino.dart';

class AppController{

  static final AppController instance = AppController._(); // Singleton para instanciar o controller na aplicação
  AppController._(); // construtor privado: pode acessar a instancia apenas dentro da classe específica!

  // final themeSwitch = ValueNotifier<bool>(false);

  AppconfigModel config = AppconfigModel();

  bool get isDark => config.themeSwitch.value;

  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  changeTheme(bool value){
    config.themeSwitch.value = value;
  }
}