import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/routes.dart';
import 'package:flutter_ecommerce/screens/profile/profile_screen.dart';
import 'package:flutter_ecommerce/screens/splash/splash_screen.dart';
import 'package:flutter_ecommerce/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // initialRoute: ProfileScreen.routeName,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
