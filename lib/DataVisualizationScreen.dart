
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DataVisualizationScreen extends StatefulWidget {
  @override
  _DataVisualizationScreenState createState() => _DataVisualizationScreenState();
}

class _DataVisualizationScreenState extends State<DataVisualizationScreen> {
  List<FlSpot> dataPoints = [
    FlSpot(0, 20),
    FlSpot(1, 25),
    FlSpot(2, 18),
    FlSpot(3, 22),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Visualization')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: dataPoints,
                isCurved: true,
                colors: [Colors.blue],
                barWidth: 4,
                belowBarData: BarAreaData(show: false),
                dotData: FlDotData(show: false),
              ),
            ],
            titlesData: FlTitlesData(
              leftTitles: SideTitles(showTitles: true),
              bottomTitles: SideTitles(showTitles: true),
            ),
          ),
        ),
      ),
    );
  }
}
