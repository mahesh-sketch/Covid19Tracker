import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'trackall.dart';
import 'today.dart';
import 'package:covid19tracker/tips.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'worldwide.dart';
import 'totalpercentage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                  child: Container(
                    height: 180,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Color(hexcolor('A3C5F3')),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(image: AssetImage("Image/img3.png")),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                 Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    'Known safety tips and',
                                    style:GoogleFonts.openSans(textStyle:const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                 Padding(
                                  padding: const EdgeInsets.only(right: 48.0, top: 5),
                                  child: Text(
                                    'Precautions from',
                                    style:GoogleFonts.openSans(textStyle:const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                 Padding(
                                  padding:
                                      const EdgeInsets.only(right: 122.0, top: 5),
                                  child: Text('Doctors',
                                      style:GoogleFonts.openSans(textStyle:const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 120.0, top: 15, left: 5),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Tips(),
                                          ));
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      //color: Colors.pink,
                                      decoration: BoxDecoration(
                                          color: Color(hexcolor('9156EC')),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 45,
                    //  color: Colors.pink,
                    child: TabBar(
                      unselectedLabelColor: Colors.grey[500],
                      indicatorColor: Colors.black12,
                      indicator: BoxDecoration(
                        color: Color(hexcolor('9156EC')),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      tabs:  [
                        Text('Today',style: GoogleFonts.openSans(textStyle: const TextStyle(fontSize: 18)),),
                        Text('Worldwide',style: GoogleFonts.openSans(textStyle: const TextStyle(fontSize: 18))),
                        Text('Total %',style: GoogleFonts.openSans(textStyle: const TextStyle(fontSize: 18))),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Expanded(
                  child: TabBarView(children: [
                    Today(),
                    India(),
                    Worldwide(),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const TrackAllcountries(),));
                    },
                    child: Container(
                      height: 60,
                    //  width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(hexcolor('9156EC')),
                      ),
                      child: Center(child: Text('Track all Countries',style: GoogleFonts.openSans(textStyle: const TextStyle(fontSize: 20,color: Colors.white)),),),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
