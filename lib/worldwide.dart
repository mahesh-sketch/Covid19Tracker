import 'dart:convert';
import 'package:covid19tracker/Model/AllworldModel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
class India extends StatefulWidget {
  const India({Key? key}) : super(key: key);

  @override
  State<India> createState() => _IndiaState();
}

class _IndiaState extends State<India> {
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
                builder: (context, AsyncSnapshot<AllupdateModel> snapshot) {
                  var data = snapshot.data;
                  if (snapshot.connectionState == ConnectionState.waiting && !snapshot.hasData && data==null) {
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
                                        snapshot.data!.cases.toString(),
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
                                        'Active',
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
                                        snapshot.data!.active.toString(),
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
                                        snapshot.data!.recovered.toString(),
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
                                    color: Color(hexcolor('F0F1F2'))),
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
                                        snapshot.data!.deaths.toString(),
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
                },
              ),
            ),
          ],
        ));
  }
}
