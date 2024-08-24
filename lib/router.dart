import 'package:flutter/material.dart';
import 'package:podberi_ru/components/main/splashscreen.dart';
import 'package:podberi_ru/screens/blogscreen.dart';
import 'package:podberi_ru/screens/mainscreen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => SplashScreen(),
  '/home': (context) => MainScreen(),
  '/blogscreen': (context) => BlogScreen(),
  // '/coin': (context) => const (),
};
