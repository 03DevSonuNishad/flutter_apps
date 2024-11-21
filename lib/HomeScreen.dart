

import 'package:flutter/material.dart';
import 'package:iot_health_app/DeviceListScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _deviceNameController = TextEditingController();
  String _connectionType = 'Bluetooth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IoT Health App'),
        leading: Icon(Icons.diamond_sharp),
        backgroundColor: Colors.blueGrey.shade100,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _deviceNameController,
              decoration: InputDecoration(labelText: 'Device Name'),
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: _connectionType,
              items: <String>['Bluetooth', 'Wi-Fi']
                  .map((type) => DropdownMenuItem(value: type, child: Text(type)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _connectionType = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to device list screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeviceListScreen()),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
