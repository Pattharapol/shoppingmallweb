import 'package:flutter/cupertino.dart';
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
                  Text('โรงพยาบาลโพธิ์ศรีสุวรรณ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('developed by : Pattharapol using flutter'),
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
                  TextButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false),
                    child: Text('Home'),
                  ),
                  SizedBox(width: 30),
                  TextButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, '/showProduct', (route) => false),
                    child: Text('Show Product'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
