import 'package:app_contatto/pages/dashboard/dashboard.dart';
import 'package:app_contatto/pages/splash_page/splash_page.dart';
import 'package:app_contatto/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    locale: Locale('pt-BR','BR'),
    home: SplashPage(),
    theme: appTheme(),
  ));
  
}