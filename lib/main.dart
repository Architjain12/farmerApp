import 'package:farmer/pages/imageUpload.dart';
import 'package:farmer/widget/categoryCard.dart';
import 'package:farmer/pages/getStarted.dart';
import 'package:farmer/pages/homee.dart';
import 'package:farmer/pages/test.dart';
import 'package:farmer/widget/productCard.dart';
//import 'package:farmer/pages/imageUpload.dart';
//import 'package:farmer/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'themes/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'FarmApp',
          themeMode: themeProvider.themeMode,
          debugShowCheckedModeBanner: false,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          home:HopePage(),//ProductCard(productName: "rice", productLocation: "a", productPrice: "2")//GetStartedPage(),
        );
      });
}
