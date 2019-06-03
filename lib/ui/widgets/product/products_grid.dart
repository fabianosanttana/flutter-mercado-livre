import 'package:flutter/material.dart';
import 'package:mercado_livre/resources/models/product_model.dart';
import 'package:mercado_livre/resources/blocs/product_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mercado_livre/ui/widgets/product/product_card.dart';

class ProductsGrid extends StatefulWidget {
  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  void initState() {
    super.initState();
    bloc.fetchAllProducts();
  }

  @override
  void dispose() {
    super.dispose();
    bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.allProducts,
        builder: (context, AsyncSnapshot<List<Product>> snapshot) {
          if (snapshot.hasData)
            return buildList(snapshot);
          else if (snapshot.hasError) return Text(snapshot.error.toString());
          return Center(
              child: Container(
            padding: EdgeInsets.all(20),
            child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue)),
          ));
        });
  }

  Widget buildList(AsyncSnapshot<List<Product>> snapshot) {
    return StaggeredGridView.count(
      primary: false,
      shrinkWrap: true,
      crossAxisCount: 4, //Cada card vai ocupar 2 espaços horizontais
      padding: const EdgeInsets.all(6.0),
      children: snapshot.data.map((product) {
        return ProductCard(product);
      }).toList(),
      staggeredTiles: snapshot.data
          .map<StaggeredTile>((_) => StaggeredTile.fit(2))
          .toList(),
      mainAxisSpacing: 3.0,
      crossAxisSpacing: 1.0,
    );
  }
}
