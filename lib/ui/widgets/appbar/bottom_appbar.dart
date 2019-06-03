import 'package:flutter/material.dart';
import 'package:mercado_livre/theme/custom_icons.dart';

class CustomAppBarBottom extends PreferredSize {
  CustomAppBarBottom({Key key, Size size})
      : super(key: key, preferredSize: size, child: AppBarBottom());
}

class AppBarBottom extends StatefulWidget {
  @override
  _AppBarBottom createState() => _AppBarBottom();
}

class _AppBarBottom extends State<AppBarBottom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          //Usei o decoration para criar a borda superir que divide o bottom do appbar
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(width: 0.5, color: Colors.black12))),
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 13.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Align(
                  child: Icon(
                    Icons.place,
                    size: 18.0,
                    color: Colors.black54,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                flex: 1,
              ),
              Expanded(
                  child: Text(
                    'Enviar para Fabiano - Beco Diagonal - Londres ...',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  flex: 5),
              Expanded(
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 13.0,
                      color: Colors.black38,
                    )),
                flex: 1,
              ),
            ],
          )),
      onTap: () {
        print('oi');
      },
    );
  }
}
