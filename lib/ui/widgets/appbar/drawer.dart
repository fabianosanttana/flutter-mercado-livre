import 'package:flutter/material.dart';
import 'package:mercado_livre/theme/colors.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new ListView(
        children: <Widget>[
        //header - Mockado
        new UserAccountsDrawerHeader(
          accountName: Text('Fabiano Santana'),
          accountEmail: Text('fabianosanttana@hotmail.com'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: CustomColors.mainYellow,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          decoration: new BoxDecoration(color: CustomColors.mainYellow),
        ),

        //body
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Home Page'),
            leading: Icon(Icons.home),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('My account'),
            leading: Icon(Icons.person),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('My Orders'),
            leading: Icon(Icons.shopping_basket),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Categoris'),
            leading: Icon(Icons.dashboard),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Favourites'),
            leading: Icon(Icons.favorite),
          ),
        ),

        Divider(),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Settings'),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('About'),
            leading: Icon(Icons.help, color: Colors.green),
          ),
        ),
      ],
    ));
  }
}
