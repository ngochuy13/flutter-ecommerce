import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/product_card.dart';
import 'package:flutter_ecommerce/models/Product.dart';
import 'package:flutter_ecommerce/screens/detail/detail_screen.dart';
import 'package:flutter_ecommerce/size_config.dart';

import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () {
                    Navigator.pushNamed(
                      context,
                      DetailScreen.routeName,
                      arguments:
                          ProductDetauilArguments(product: demoProducts[index]),
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
