import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/rounded_icon_btn.dart';
import 'package:flutter_ecommerce/constant.dart';
import 'package:flutter_ecommerce/models/Product.dart';
import 'package:flutter_ecommerce/size_config.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int isSelectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => ColorDot(
                color: widget.product.colors[index],
                isSeleted: isSelectedColor == index,
                press: () {
                  setState(() {
                    isSelectedColor = index;
                  });
                }),
          ),
          Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          RoundedIconBtn(
            iconData: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSeleted = false,
    @required this.press,
  }) : super(key: key);

  final Color color;
  final bool isSeleted;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          right: getProportionateScreenWidth(2),
        ),
        padding: EdgeInsets.all(8),
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border:
              Border.all(color: isSeleted ? kPrimaryColor : Colors.transparent),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}
