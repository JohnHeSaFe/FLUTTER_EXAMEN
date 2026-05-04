import 'package:flutter/material.dart';
import 'package:flutter_examen/screens/detail_page.dart';
import 'package:flutter_examen/screens/home_page.dart';
import 'screens/list_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String list = '/list';
  static const String detail = '/detail';

  static Map<String, WidgetBuilder> get routes => {
        home: (context) => HomePage(),
        list: (context) => ListPage(),
        detail: (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>?;
          final index = args?['index'];
          final text = args?['text'];
          return DetailPage(index: index, text: text);
        }
      };
}
