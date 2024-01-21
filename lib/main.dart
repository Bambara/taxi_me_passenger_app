import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:json_theme/json_theme.dart';

import 'data/recover_database.dart';
import 'views/user/login_screen.dart';

void main() async {
  await Get.put(RecoverDatabase()).initDatabase();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final lightThemeStr = await rootBundle.loadString('assets/theme_data/light.json');
  final lightThemeJson = jsonDecode(lightThemeStr);
  final lightTheme = ThemeDecoder.decodeThemeData(lightThemeJson)!;

  final darkThemeStr = await rootBundle.loadString('assets/theme_data/dark.json');
  final darkThemeJson = jsonDecode(darkThemeStr);
  final darkTheme = ThemeDecoder.decodeThemeData(darkThemeJson)!;

  runApp(MyApp(
    lightTheme: lightTheme,
    darkTheme: darkTheme,
  ));

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.lightTheme, required this.darkTheme});

  final ThemeData lightTheme;
  final ThemeData darkTheme;

  // This widget is the root of your application.fgf
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TaxiMe Passenger',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: () => LoginScreen()),
        // GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
      ],
    );
  }
}
