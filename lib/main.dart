import 'package:flutter/material.dart';
import 'package:mercado_livre/theme/theme.dart';
import 'package:mercado_livre/ui/containers/main_container.dart';
import 'package:mercado_livre/routes/routes.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomThemes.kDefaultTheme,
      title: CustomThemes.title,
      debugShowCheckedModeBanner: false,
      home: MainContainer(
        title: CustomThemes.title,
      ),
      onGenerateRoute: CustomRoutes.onGenerateRoute,
    );
  }
}