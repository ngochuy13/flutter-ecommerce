import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant.dart';
import 'package:flutter_ecommerce/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            Text(
              "OTP Verification",
              style: headingStyle,
            ),
            Text("We sent your code to +1 898 860 ***"),
            buildTimer(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.15,
            ),
            OtpForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            GestureDetector(
              onTap: () {
                // resend OTP
              },
              child: Text(
                "Resend OTP Code",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (BuildContext context, value, Widget child) {
            return Text(
              '00:${value.toInt()}',
              style: TextStyle(color: kPrimaryColor),
            );
          },
          onEnd: () {
            // end action
          },
        ),
      ],
    );
  }
}
