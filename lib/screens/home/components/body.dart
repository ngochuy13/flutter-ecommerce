import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/home/components/special_offer.dart';
import 'package:flutter_ecommerce/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            SpecialOffer(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            PopularProducts(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}
