import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key key,
    @required this.iconData,
    @required this.press,
    this.showShadow = false,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenHeight(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 10,
              color: Color(0xFFB0B0B0).withOpacity(0.2),
            ),
        ],
      ),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: Colors.white,
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
