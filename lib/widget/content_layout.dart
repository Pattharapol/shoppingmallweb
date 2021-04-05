import 'package:flutter/material.dart';
import 'package:ungshoppingmall/Utility/my_constant.dart';

class ContentLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'ทดสอบ 1',
                style: TextStyle(fontSize: 24),
              ),
            ),
            // Text(MyConstant().lorem),
            Text(
                'เว็ปไซต์นี้จัดทำขึ้นเพื่อการศึกษาและทดสอบระบบ โดยใช้ flutter ในการสร้าง'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'ทดสอบ 2',
                style: TextStyle(fontSize: 24),
              ),
            ),
            // Text(MyConstant().lorem),
            Text(
                'เว็ปไซต์นี้จัดทำขึ้นเพื่อการศึกษาและทดสอบระบบ โดยใช้ flutter ในการสร้าง'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'ทดสอบ 3',
                style: TextStyle(fontSize: 24),
              ),
            ),
            // Text(MyConstant().lorem),
            Text(
                'เว็ปไซต์นี้จัดทำขึ้นเพื่อการศึกษาและทดสอบระบบ โดยใช้ flutter ในการสร้าง'),
          ],
        ),
      ),
    );
  }
}
