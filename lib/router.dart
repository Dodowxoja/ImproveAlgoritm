import 'package:app/screens/home_scren.dart';
import 'package:flutter/material.dart';

class MyRouter {
  Route? onGenerate(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
