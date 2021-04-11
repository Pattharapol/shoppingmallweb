import 'package:flutter/material.dart';
import 'package:ungshoppingmall/models/user_model.dart';

class MyService extends StatefulWidget {
  // รองรับการส่งข้อมูลมาจาก route
  final UserModel userModel;
  MyService({@required this.userModel});

  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  UserModel model;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    model = widget.userModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Welcome ${model.name}'),
    );
  }
}
