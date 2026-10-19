import 'package:flutter/material.dart';
import 'package:layouts3/screens/screens.dart';

class AppRoutes {

  static String initialRoute = '/basic';
  
  static Map<String, Widget Function(BuildContext)> routes = {
    '/basic' : (BuildContext context) => const BasicDesign(),
  };
}