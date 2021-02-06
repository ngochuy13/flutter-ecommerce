import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant.dart';
import 'package:flutter_ecommerce/models/Product.dart';
import 'package:flutter_ecommerce/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetion = 1.02,
    @required this.product,
    @required this.press,
    this.toggleFavouriteProduct,
  }) : super(key: key);
  final double width, aspectRetion;
  final Product product;
  final GestureTapCallback press;
  final GestureTapCallback toggleFavouriteProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          children: [
            GestureDetector(
              onTap: press,
              child: AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: press,
              child: SizedBox(
                width: double.infinity,
                height: getProportionateScreenHeight(45),
                child: Text(
                  product.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: toggleFavouriteProduct,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(6)),
                    width: getProportionateScreenWidth(28),
                    height: getProportionateScreenHeight(28),
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? kPrimaryColor.withOpacity(0.15)
                          : kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color: product.isFavourite ? Colors.red : Colors.grey,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
