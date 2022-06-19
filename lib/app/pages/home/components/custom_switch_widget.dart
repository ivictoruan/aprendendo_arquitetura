import 'package:aprendendo_arquitetura/app/app_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AppController controller = AppController.instance;
    return ValueListenableBuilder(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child) {
        return Switch(
          value: AppController.instance.isDark, // valor inicial
          onChanged: (value) {
            AppController.instance.changeThemeViewModel.changeTheme(value);
          },
        );
      },
    );
  }
}
