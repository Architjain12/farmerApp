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
    //textTheme: const TextTheme(
          //headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          //headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          //bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        //)
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
          bodyText1: TextStyle(fontSize: 14.0),
          bodyText2: TextStyle(fontSize: 14.0, color: Color(0xFF616161)),
        )
    
  );
  static final lightTheme = ThemeData(
    primaryColorDark: Colors.black,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,//.withOpacity(0.8),
    colorScheme: ColorScheme.light(),
    textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.w500, color: Color.fromRGBO(18, 18, 18,1), ),
          //headline2: TextStyle( fontWeight: FontWeight.bold, color: Color(0xFF333333),),
          bodyText1: TextStyle(fontWeight: FontWeight.w300, color: Color.fromRGBO(18, 18, 18, 0.7)),
          //bodyText2: TextStyle( color: Color(0xFF747474)), 
          subtitle1: TextStyle(fontWeight: FontWeight.w700, color: Color.fromRGBO(18, 18, 18, 0.8) ),
          
        )
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
    systemNavigationBarDividerColor: Colors.teal.shade900,
    systemNavigationBarColor: Colors.teal.shade900,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  SystemChrome.setSystemUIOverlayStyle(style);
}



