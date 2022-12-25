import 'dart:convert';
import 'package:covid19tracker/Model/AllworldModel.dart';
import 'package:pie_chart/pie_chart.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

final colorList = <Color>[
  const Color(0xfffdcb6e),
  const Color(0xff30A64A),
  const Color(0xfffd79a8),
  const Color(0xffe17055),
];

class Worldwide extends StatefulWidget {
  const Worldwide({Key? key}) : super(key: key);

  @override
  State<Worldwide> createState() => _WorldwideState();
}

class _WorldwideState extends State<Worldwide> {

  Future<AllupdateModel> getPhotos() async {
    await Future.delayed(const Duration(seconds: 2));
    final response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return AllupdateModel.fromJson(data);
    } else {
      return AllupdateModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: FutureBuilder(
            future: getPhotos(),
            builder: (context, snapshot) {
              if (!snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff9156EC),
                  ),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PieChart(
                      dataMap: {
                        "TotalActive":
                            double.parse(snapshot.data!.active.toString()),
                        "TotalRecovered":
                            double.parse(snapshot.data!.recovered.toString()),
                        "TotalDeaths":
                            double.parse(snapshot.data!.deaths.toString()),
                      },
                      legendOptions: const LegendOptions(
                          showLegendsInRow: false,
                          legendPosition: LegendPosition.left,
                          showLegends: true,
                          legendShape: BoxShape.rectangle,
                          legendTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: true,
                      ),
                      animationDuration: const Duration(milliseconds: 800),
                      chartLegendSpacing: 50,
                      chartRadius: 150,
                      colorList: colorList,
                      initialAngleInDegree: 0,
                      chartType: ChartType.ring,
                      ringStrokeWidth: 32,
                    ),
                  ],
                );
              }
            },
          ),
        )
      ],
    ));

  }
}
