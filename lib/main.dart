import 'package:flutter/material.dart';
import 'package:iot_health_app/HomeScreen.dart';

void main() => runApp(IoTHealthApp());

class IoTHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IoT Health App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),

    );
  }
}
