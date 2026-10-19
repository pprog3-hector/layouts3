import 'package:flutter/material.dart';
import 'package:layouts3/screens/screens.dart';

class AppRoutes {

  static String initialRoute = '/scroll';
  
  static Map<String, Widget Function(BuildContext)> routes = {
    '/basic' : (BuildContext context) => const BasicDesign(),
    '/scroll' : (BuildContext context) => const ScrollDesign(),
  };
}