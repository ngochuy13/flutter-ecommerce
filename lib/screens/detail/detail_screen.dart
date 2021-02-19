import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/Product.dart';

import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final ProductDetauilArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F6F9),
        appBar: CustomAppBar(arguments.product.rating),
        body: SingleChildScrollView(child: Body(product: arguments.product)),
      ),
    );
  }
}

class ProductDetauilArguments {
  final Product product;

  ProductDetauilArguments({@required this.product});
}
