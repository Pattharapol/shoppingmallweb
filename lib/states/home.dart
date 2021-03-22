import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ungshoppingmall/widget/calltoaction_layout.dart';
import 'package:ungshoppingmall/widget/content_layout.dart';
import 'package:ungshoppingmall/widget/navigator_layout.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1500),
          child: ScreenTypeLayout(
            desktop: buildDesktop(),
            tablet: buildTabletAndMobile(),
            mobile: buildTabletAndMobile(),
          ),
        ),
      ),
    );
  }

  Widget buildTabletAndMobile() => ListView(
        children: [
          NavigatorLayout(),
          CallToActionLayout(),
          ContentLayout(),
        ],
      );

  Widget buildDesktop() => Column(
        children: [
          NavigatorLayout(),
          Expanded(
            child: Row(
              children: [
                ContentLayout(),
                CallToActionLayout(),
              ],
            ),
          ),
        ],
      );
}
