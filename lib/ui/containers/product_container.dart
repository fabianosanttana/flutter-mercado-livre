import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mercado_livre/config/appbar.dart';
import 'package:mercado_livre/resources/blocs/product_detail_bloc_provider.dart';
import 'package:mercado_livre/resources/models/product_model.dart';
import 'package:mercado_livre/ui/widgets/appbar/silver_app_bar.dart';
import 'package:mercado_livre/ui/widgets/carousel/carousel_product.dart';
import 'package:mercado_livre/ui/utils/sliver_delegate.dart';
// class ProductContainer extends StatefulWidget {
//   final Product _product;

//   ProductContainer(this._product) : assert(_product != null);

//   @override
//   _ProductContainerState createState() => _ProductContainerState();
// }

// class _ProductContainerState extends State<ProductContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//           title: widget._product.title,
//           actions: EnumAppBar.cart,
//           context: context),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Hero(
//               tag: widget._product.id,
//               child: Image.network(widget._product.image, fit: BoxFit.fill,),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProductContainer extends StatefulWidget {
  final Product _product;

  ProductContainer(this._product) : assert(_product != null);

  @override
  State<StatefulWidget> createState() {
    return ProductContainerState(product: _product);
  }
}

class ProductContainerState extends State<ProductContainer> {
  final Product product;

  ProductDetailBloc bloc;

  ProductContainerState({this.product});

  // @override
  // void didChangeDependencies() {
  //   bloc = ProductDetailBlocProvider.of(context);
  //   bloc.fetchProductById(product.id);
  //   print("recreated");
  //   super.didChangeDependencies();
  // }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: product.id,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                CustomSliverAppBar(
                    title: product.title,
                    actions: EnumAppBar.product,
                    context: context),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverAppBarDelegate(
                    minHeight:260.0,
                    maxHeight: 260.0,
                    child: CarouselProductDetail(),
                  ),
                )
              ];
            },
            body: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(top: 5.0)),
                      Text(
                        product.title,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(margin: EdgeInsets.only(top: 8.0, bottom: 8.0)),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 1.0, right: 1.0),
                          ),
                          Text(
                            'voteAverage',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          ),
                          Text(
                            'releaseDate',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                      Container(margin: EdgeInsets.only(top: 8.0, bottom: 8.0)),
                      Text(product.description),
                      Container(margin: EdgeInsets.only(top: 8.0, bottom: 8.0)),
                      Text(
                        "Trailer",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(margin: EdgeInsets.only(top: 8.0, bottom: 8.0)),
                      // StreamBuilder(
                      //   stream: bloc.movieTrailers,
                      //   builder: (context,
                      //       AsyncSnapshot<Future<TrailerModel>> snapshot) {
                      //     if (snapshot.hasData) {
                      //       return FutureBuilder(
                      //         future: snapshot.data,
                      //         builder: (context,
                      //             AsyncSnapshot<TrailerModel> itemSnapShot) {
                      //           if (itemSnapShot.hasData) {
                      //             if (itemSnapShot.data.results.length > 0)
                      //               return trailerLayout(itemSnapShot.data);
                      //             else
                      //               return noTrailer(itemSnapShot.data);
                      //           } else {
                      //             return Center(
                      //                 child: CircularProgressIndicator());
                      //           }
                      //         },
                      //       );
                      //     } else {
                      //       return Center(child: CircularProgressIndicator());
                      //     }
                      //   },
                      // ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
//   Widget noTrailer(TrailerModel data) {
//     return Center(
//       child: Container(
//         child: Text("No trailer available"),
//       ),
//     );
//   }

//   Widget trailerLayout(TrailerModel data) {
//     if (data.results.length > 1) {
//       return Row(
//         children: <Widget>[
//           trailerItem(data, 0),
//           trailerItem(data, 1),
//         ],
//       );
//     } else {
//       return Row(
//         children: <Widget>[
//           trailerItem(data, 0),
//         ],
//       );
//     }
//   }

//   trailerItem(TrailerModel data, int index) {
//     return Expanded(
//       child: Column(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.all(5.0),
//             height: 100.0,
//             color: Colors.grey,
//             child: Center(child: Icon(Icons.play_circle_filled)),
//           ),
//           Text(
//             data.results[index].name,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ],
//       ),
//     );
//   }
// }
