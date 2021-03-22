import 'package:flutter/material.dart';

class NavigatorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Colors.pink.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 70,
                  child: Image(
                    image: AssetImage('images/logo.png'),
                  )),
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('UngShoppingMall',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('Eazy Store'),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(onPressed: () {}, child: Text('menu1')),
                  TextButton(onPressed: () {}, child: Text('menu2')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
