import 'package:flutter/material.dart';
import 'package:ungshoppingmall/states/home.dart';
import 'package:ungshoppingmall/states/show_product.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => Home(),
  '/showProduct': (BuildContext context) => ShowProduct(),
};

String initialRoute = '/home';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: map,
      initialRoute: initialRoute,
    );
  }
}
