// lib/device_list_screen.dart
import 'package:flutter/material.dart';
import 'package:iot_health_app/DataVisualizationScreen.dart';
//import 'data_visualization_screen.dart';

class DeviceListScreen extends StatelessWidget {
  final List<String> devices = ['Device A', 'Device B', 'Device C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Device List')),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(devices[index]),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataVisualizationScreen()),
                );
              },
              child: Text('Connect'),
            ),
          );
        },
      ),
    );
  }
}
