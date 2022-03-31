import 'package:flutter/material.dart';
import 'package:navigation/pages/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is a Second Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('กลับไปหน้าแรก'),  
            ),
            ElevatedButton(
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (context) => ThirdPage(
                    stdName: 'กัลยารัตน์ เต็งรัง',
                    stdId: '622021110',
                    
                  ),
                );
                Navigator.push(context, route);
              },
              child: const Text('ยืนยันแล้ว ส่งค่าข้อมูลไปหน้าที่ 3'),  
            ),
          ],
        ),
      ),
    );
  }
}