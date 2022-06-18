// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class AppController{

  static final AppController instance = AppController._(); // Singleton para instanciar o controller na aplicação
  AppController._(); // construtor privado: pode acessar a instancia apenas dentro da classe específica!

  final themeSwitch = ValueNotifier<bool>(false);

  changeTheme(bool value){
    themeSwitch.value = value;
  }
}