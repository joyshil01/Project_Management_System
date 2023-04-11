import 'package:flutter/material.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Line_Chart extends StatefulWidget {
  @override
  State<Line_Chart> createState() => _Line_ChartState();
}

class _Line_ChartState extends State<Line_Chart> {
  @override
  Widget build(BuildContext context) {
    List<SalesData> data = [
      SalesData('Mar', 5),
      SalesData('Apr', 10),
      SalesData('may', 34),
      SalesData('Jun', 32),
      SalesData('Jul', 40),
      SalesData('Aug', 50),
      SalesData('Sep', 100),
    ];
    return Container(
      height: SizeVariables.getHeight(context) * 0.19,
      child: SfCartesianChart(
        palette: const [
          Color(0xfff2B5CC4),
        ],
        plotAreaBorderColor: Color(0xfff50BFE3),
        plotAreaBorderWidth: 0,
        primaryYAxis: NumericAxis(
          maximumLabels: 5,
          maximum: 100,
          minimum: 0,
          labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Color(0xfff2B5CC4),
              ),
          majorGridLines: const MajorGridLines(
            color: Color(0xfff50BFE3),
          ),
          axisLine: const AxisLine(
            width: 0,
          ),
        ),
        primaryXAxis: CategoryAxis(
          labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Color(0xfff2B5CC4),
              ),
          majorGridLines: const MajorGridLines(width: 0),
          minorGridLines: const MinorGridLines(
            color: Color(0xfff50BFE3),
            width: 10,
          ),
          axisLine: const AxisLine(
            color: Color(0xfff50BFE3),
          ),
          majorTickLines: const MajorTickLines(
            color: Color(0xfff50BFE3),
          ),
        ),
        tooltipBehavior: TooltipBehavior(
          enable: true,
        ),
        axes: [LogarithmicAxis()],
        series: <ChartSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
            animationDuration: 4500,
            animationDelay: 2000,
            dataSource: data,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            name: 'Claimz',
            enableTooltip: true,

            // Enable data label
            // dataLabelSettings: DataLabelSettings(isVisible: true),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
