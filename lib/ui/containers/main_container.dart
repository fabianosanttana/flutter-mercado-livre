import 'package:flutter/material.dart';
import 'package:mercado_livre/config/appbar.dart';
import 'package:mercado_livre/ui/widgets/appbar/app_bar.dart';
import 'package:mercado_livre/ui/widgets/appbar/drawer.dart';
import 'package:mercado_livre/ui/widgets/carousel/carousel_spotlight.dart';

//Custom Widgets
import 'package:mercado_livre/ui/widgets/horizontal_list/horizontal_list.dart';
import 'package:mercado_livre/ui/widgets/product/products_grid.dart';

class MainContainer extends StatefulWidget {
  final String title;

  MainContainer({Key key, @required this.title}) : super(key: key);

  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: widget.title, actions: EnumAppBar.main, context: context),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        CarouselSpotlight(),
        HorizontalList(),
        Container(
          child: ProductsGrid(),
        ),
      ])),
    );
  }
}
