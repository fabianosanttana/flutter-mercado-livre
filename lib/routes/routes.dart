import 'package:flutter/material.dart';
import 'package:mercado_livre/routes/transition.dart';
import 'package:mercado_livre/theme/theme.dart';
import 'package:mercado_livre/ui/containers/cart_container.dart';

//Containers
import 'package:mercado_livre/ui/containers/main_container.dart';

class CustomRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    //Case pelo nome da rota
    switch (settings.name) {
      case '/':
        return SlideRightRoute(
            widget: MainContainer(title: CustomThemes.title));
      case '/cart':
        return SlideRightRoute(
            widget: CartContainer());
      default:
        return SlideRightRoute(
            widget: MainContainer(title: CustomThemes.title));
    }
  }
}
