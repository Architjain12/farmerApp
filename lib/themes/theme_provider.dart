import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class ThemeProvider extends ChangeNotifier {
  
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance!.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    isOn ? setBlackBar() : setWhiteBar();
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
    primaryColorDark: Colors.white,
    scaffoldBackgroundColor: Color(0xFF121212),
    colorScheme: ColorScheme.dark(),
    //canvasColor: Colors.transparent,
  );
  static final lightTheme = ThemeData(
    primaryColorDark: Colors.black,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    //canvasColor: Colors.transparent,
  );
}

Future setBlackBar() async {
  final style = SystemUiOverlayStyle(
    systemNavigationBarDividerColor: Colors.black,
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  SystemChrome.setSystemUIOverlayStyle(style);
}

Future setWhiteBar() async {
  final style = SystemUiOverlayStyle(
    systemNavigationBarDividerColor: Colors.white,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  SystemChrome.setSystemUIOverlayStyle(style);
}



