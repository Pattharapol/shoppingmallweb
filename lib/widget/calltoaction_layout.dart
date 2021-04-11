import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ungshoppingmall/Utility/dialog.dart';
import 'package:ungshoppingmall/models/user_model.dart';
import 'package:ungshoppingmall/states/my_service.dart';

class CallToActionLayout extends StatelessWidget {
  String user, password;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          buildCenter(context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Your Account',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('No Account?'),
                  TextButton(onPressed: () {}, child: Text('Create Account')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Center buildCenter(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildUser(),
          buildPassword(),
          buildLogin(context),
        ],
      ),
    );
  }

  Container buildLogin(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          print('user = $user, password = $password');
          if ((user == null || password == null) ||
              (user.isEmpty || password.isEmpty)) {
            print('Have Space');
            normalDialog(
                context, 'Have Space', 'Please Fill every blank space');
          } else {
            checkAuthen(context);
          }
        },
        child: Text('Login'),
      ),
    );
  }

  Future<Null> checkAuthen(BuildContext context) async {
    String path =
        'http://localhost/shoppingmallwebAPI/getUserWhereUser.php?isAdd=true&user=$user';
    await Dio().get(path).then((value) {
      if (value.toString() != 'null') {
        var result = json.decode(value.data);
        print('### value = $value ###');

        // ใส่ค่าเข้าไปให้ model เพื่อจะนำไปใช้งาน
        for (var item in result) {
          UserModel model = UserModel.fromMap(item);
          print('Welcome ${model.name}');

          if (password == model.password) {
            // ส่งค่าไปที่หน้าอื่น
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => MyService(userModel: model)),
                (route) => false);
          } else {
            normalDialog(context, 'Password Failed', 'Please try again...');
          }
        }
      } else {
        normalDialog(context, 'User Failed', 'No $user in my Database');
      }
    });
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 48),
      width: 200,
      child: TextField(
        onChanged: (value) => user = value.trim(),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity),
          labelText: 'User : ',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: 200,
      child: TextField(
        obscureText: true,
        onChanged: (value) => password = value.trim(),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          labelText: 'Password : ',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
