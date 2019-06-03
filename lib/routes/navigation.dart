import 'package:flutter/material.dart';

class CustomNavigation {
  static void pushNavigation(BuildContext context, String route, {Object arguments}) {
    /* [TODO] */
    Navigator.pushNamed(context, route, arguments: arguments);
  }
}
