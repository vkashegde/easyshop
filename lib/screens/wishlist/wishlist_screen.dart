import 'package:easy_shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:easy_shop/models/models.dart';
import 'package:easy_shop/widgets/custom_appbar.dart';
import 'package:easy_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: CustomNavBar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is WishlistLoaded) {
            return GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                itemCount: state.wishlist.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 2.3),
                itemBuilder: (BuildContext conttext, int index) {
                  return Center(
                    child: ProductCard(
                      product: state.wishlist.products[index],
                      widthFactor: 1.1,
                      isWhishlist: true,
                    ),
                  );
                });
          } else {
            return Text('Something went wrong');
          }
        },
      ),
    );
  }
}
