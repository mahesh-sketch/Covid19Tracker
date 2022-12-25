import 'package:covid19tracker/detailsallcountry.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      'Tips',
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                        fontSize: 25,
                        letterSpacing: 10,
                      )),
                    ),
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
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
                  top: 100,
                  left: 80,
                  right: 80,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(
                              10.0,
                              10.0,
                            ),
                            color: Colors.black12,
                            spreadRadius: 2.0,
                            blurRadius: 10.0,
                          ), //BoxShadow
                        ],
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://i.pinimg.com/736x/13/b7/bc/13b7bcee8372da61e7a07b8ed3f4ca94.jpg'),
                            fit: BoxFit.fill),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 170.0, right: 20, left: 20),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(hexcolor('9156EC'))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 15),
                          child: Text(
                            'Tips 1:',
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Text(
                            'Wash your hands often with soap and water for at least 20 seconds. ',
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 15),
                          child: Text(
                            'Tips 2:',
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Text(
                            'Avoid touching your eyes, nose, and mouth. ',
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 15),
                          child: Text(
                            'Tips 3:',
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Text(
                            'If you aren’t feeling well, stay home. This includes visiting the doctor’s office.',
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 15),
                          child: Text(
                            'Tips 4:',
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Text(
                            'Clean and disinfect frequently touched objects and surfaces using a regular household cleaning spray or wipe.',
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
