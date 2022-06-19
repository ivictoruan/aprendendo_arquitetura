import 'package:aprendendo_arquitetura/app/interfaces/local_storage_interface.dart';
import 'package:aprendendo_arquitetura/app/models/appconfig_model.dart';

class ChangeThemeViewModel{

  final LocalStorageInterface storage; 

  AppconfigModel config = AppconfigModel();


  ChangeThemeViewModel({ required this.storage});

  Future init() async {
    await storage.get('isDark').then((value) => {
      if(value != null) config.themeSwitch.value = value 
    });
  }

  changeTheme(bool value){
    config.themeSwitch.value = value;
    storage.put('isDark', value); // salva o valor<bool> em relação a String (localmente)
  }
}
