// import 'package:flutter/cupertino.dart';

import 'package:aprendendo_arquitetura/app/interfaces/local_storage_interface.dart';
import 'package:aprendendo_arquitetura/app/models/appconfig_model.dart';
import 'package:aprendendo_arquitetura/app/services/shared_local_storage_service.dart';
import 'package:flutter/cupertino.dart';

class AppController{

  static final AppController instance = AppController._(); // Singleton para instanciar o controller na aplicação
  AppController._() {
    storage.get('isDark').then((value) => {
      if(value != null) config.themeSwitch.value = value 
    });
  }// construtor privado: pode acessar a instancia apenas dentro da classe específica!


  AppconfigModel config = AppconfigModel();

  bool get isDark => config.themeSwitch.value;

  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  final LocalStorageInterface storage = SharedLocalStorageService(); // tipa a interface e instancia a implementação

  changeTheme(bool value){
    config.themeSwitch.value = value;
    storage.put('isDark', value); // salva o valor<bool> em relação a String (localmente)
  }
}