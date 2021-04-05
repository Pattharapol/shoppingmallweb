import 'package:flutter/material.dart';
import 'package:ungshoppingmall/Utility/dialog.dart';

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
            print('No Space');
          }
        },
        child: Text('Login'),
      ),
    );
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
