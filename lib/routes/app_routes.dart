import 'package:flutter/material.dart';
import 'package:layouts3/screens/screens.dart';

class AppRoutes {

  static String initialRoute = '/grid';
  
  static Map<String, Widget Function(BuildContext)> routes = {
    '/basic' : (BuildContext context) => const BasicDesign(),
    '/scroll' : (BuildContext context) => const ScrollDesign(),
    '/grid' : (BuildContext context) => const GridDesignScreen(),
  };
}