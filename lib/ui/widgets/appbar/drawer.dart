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
        Container(
          height: 100,
          padding: EdgeInsets.all(10),
          color: CustomColors.mainYellow,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: CircleAvatar(
                  backgroundColor: CustomColors.backgroundColor,
                  child: Icon(
                    Icons.person,
                    color: CustomColors.grayTitle[100],
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Fabiano Santana',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text('fabianosanttana@hotmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white))
                  ],
                ),
              )
            ],
          ),
        ),
        // new UserAccountsDrawerHeader(
        //   accountName: Text('Fabiano Santana'),
        //   accountEmail: Text('fabianosanttana@hotmail.com'),
        //   currentAccountPicture: GestureDetector(
        //     child: new CircleAvatar(
        //       backgroundColor: CustomColors.mainYellow,
        //       child: Icon(
        //         Icons.person,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   decoration: new BoxDecoration(color: CustomColors.mainYellow),
        // ),

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
