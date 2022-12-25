import 'dart:convert';

import 'package:covid19tracker/Model/AllworldModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  Future<AllupdateModel> getDatas() async {
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
              future: getDatas(),
              builder: (context, AsyncSnapshot<AllupdateModel> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting &&
                    snapshot.data == null) {
                  return const Center(child: CircularProgressIndicator(
                    color: Color(0xff9156EC),
                  ));
                } else {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 160,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(hexcolor('FFE7EC'))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, right: 90.0),
                                    child: Text(
                                      'Cases',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Color(0xffFC1441))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 58.0, left: 40),
                                    child: Text(
                                      '${snapshot.data?.todayCases}',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Color(0xffFC1441),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              height: 160,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(hexcolor('E8F2FF'))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, right: 90.0),
                                    child: Text(
                                      'Critical',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Color(0xff479AFC))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 58.0, left: 40),
                                    child: Text(
                                      '${snapshot.data?.critical}',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff157FFB),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 160,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(hexcolor('EAF6ED'))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, right: 60.0),
                                    child: Text(
                                      'Recovered',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Color(0xff73B761))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 58.0, left: 40),
                                    child: Text(
                                      '${snapshot.data?.todayRecovered}',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff30A64A),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              height: 160,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(hexcolor('E4E6E7'))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, right: 60.0),
                                    child: Text(
                                      'Deceased',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Color(0xffA8ADB2))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 58.0, left: 40),
                                    child: Text(
                                      '${snapshot.data?.todayDeaths}',
                                      style: GoogleFonts.openSans(
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff6D757D),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  );
                }
              }),
        ),
      ],
    ));
  }
}

class PhotoModel {
  int cases;
  int deaths;
  int critical;
  int recovered;

  PhotoModel(
      {required this.cases,
      required this.deaths,
      required this.critical,
      required this.recovered});
}
