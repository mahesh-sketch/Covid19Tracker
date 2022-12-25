import 'package:covid19tracker/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Allcountrydetails extends StatefulWidget {
  String name;
  String image;
  int totalCase,
      totalDeaths,
      totalRecover,
      active,
      critical,
      todayRecover,
      tests,
      todayDeaths,
      todayRecovered;

  Allcountrydetails({
    required this.image,
    required this.name,
    required this.totalCase,
    required this.totalDeaths,
    required this.totalRecover,
    required this.active,
    required this.critical,
    required this.todayRecover,
    required this.tests,
    required this.todayDeaths,
    required this.todayRecovered,

  });

  @override
  State<Allcountrydetails> createState() => _AllcountrydetailsState();
}

class _AllcountrydetailsState extends State<Allcountrydetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            AppBar(
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  widget.name.toUpperCase(),
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        letterSpacing: 10,
                      )),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              backgroundColor: Color(hexcolor('9156EC')),
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 130,
              right: 130,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.image), fit: BoxFit.fill),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, right: 20, left: 20),
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Reuserow(
                        title: 'Total Cases', value: widget.totalCase.toString()),
                    Reuserow(title: 'Total Deaths',
                        value: widget.totalDeaths.toString()),
                    Reuserow(title: 'Total Recovers',
                        value: widget.totalRecover.toString()),
                    Reuserow(
                        title: 'Total Actives', value: widget.active.toString()),
                    Reuserow(title: 'Total Criticals',
                        value: widget.critical.toString()),
                    Reuserow(
                        title: 'Total Tests', value: widget.tests.toString()),
                    Reuserow(title: 'Today Deaths',
                        value: widget.todayDeaths.toString()),
                    Reuserow(title: 'Today Recoverd',
                        value: widget.todayRecovered.toString())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Reuserow extends StatelessWidget {
  String title, value;
  Reuserow({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: GoogleFonts.openSans(textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),),
              Text(value),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(),
        ],
      ),
    );
  }
}
