import 'package:flutter/material.dart';
import 'package:ungshoppingmall/widget/navigator_layout.dart';

class ShowProduct extends StatefulWidget {
  @override
  _ShowProductState createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigatorLayout(),
    );
  }
}