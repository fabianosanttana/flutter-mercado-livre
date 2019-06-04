import 'package:flutter/material.dart';
import './colors.dart';

class CustomThemes {
  static final String title = 'Mercado Livre - Flutter';

  static final ThemeData kDefaultTheme = ThemeData(
      // Define o brilho padrão e nosso esquema de cores
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[800],
      accentColor: CustomColors.mainYellow,

      // Definindo o tema padrão da nossa appBar
      appBarTheme: AppBarTheme(
          color: CustomColors.mainYellow,
          textTheme: TextTheme(
            title: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: CustomColors.textYellow),
          ),
          iconTheme:
              IconThemeData(color: CustomColors.textYellow, opacity: 0.8),
          elevation: 0.5),

      //Definindo a cor de fundo do nosso scaffold
      scaffoldBackgroundColor: CustomColors.backgroundColor,

      // Define o tema padrão para card
      cardTheme: CardTheme(
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          )),

      // Define a fonte padrão do nosso aplicativo
      fontFamily: 'Zeitung Pro',
      textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900 , fontFamily: 'Proxima Nova'),
          caption: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.black54)));

  // Definindo próprio tema para texto
  static final TextStyle price = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w900,
      color: CustomColors.textYellow);
  static final TextStyle productDetailTitle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w900,
      color: CustomColors.textYellow);
  static final TextStyle priceDescount = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w900,
      color: CustomColors.greenDiscount);
  static final TextStyle titleProduct = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w900,
      color: CustomColors.grayTitle[50]);
  static final TextStyle titleCircleItem = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w900,
      color: CustomColors.grayTitle[100]);
}
