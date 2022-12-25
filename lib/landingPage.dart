import 'package:covid19tracker/Mainpage.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Stack(
    //     fit: StackFit.passthrough,
    //     clipBehavior: Clip.none,
    //     children: [
    //       Container(
    //         height: 600,
    //         width: double.maxFinite,
    //         decoration: const BoxDecoration(
    //             color: Colors.pink,
    //             image: DecorationImage(
    //                 image: AssetImage("Image/img1.png"), fit: BoxFit.fill)),
    //       ),
    //       Positioned(
    //         bottom: -185,
    //         right: 0,
    //         left: 0,
    //         child: Container(
    //           height: 270,
    //           width: 500,
    //           decoration: BoxDecoration(
    //               color: Color(hexcolor('FFFFFF')),
    //               borderRadius: const BorderRadius.only(
    //                   topRight: Radius.circular(30),
    //                   topLeft: Radius.circular(30))),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               const Padding(
    //                 padding: EdgeInsets.only(right: 205.0, top: 20, left: 15),
    //                 child: Text(
    //                   'Be aware',
    //                   style: TextStyle(fontSize: 38),
    //                 ),
    //               ),
    //               const Padding(
    //                 padding: EdgeInsets.only(right: 155.0, top: 5, left: 15),
    //                 child: Text(
    //                   'Stay healthy',
    //                   style: TextStyle(fontSize: 38),
    //                 ),
    //               ),
    //               const Padding(
    //                 padding: EdgeInsets.only(top: 20, right: 15.0),
    //                 child: Text(
    //                   'welcome to COVID-19 information portal',
    //                   style: TextStyle(fontSize: 18),
    //                 ),
    //               ),
    //               const SizedBox(
    //                 height: 30,
    //               ),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.end,
    //                 children: [
    //                   const Padding(
    //                     padding: EdgeInsets.only(top: 5, left: 15, right: 20),
    //                     child: Text(
    //                       'GET STARTED',
    //                       style: TextStyle(fontSize: 18),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(right: 25.0),
    //                       child: InkWell(
    //                         onTap: () {
    //                           Navigator.push(
    //                               context,
    //                               MaterialPageRoute(
    //                                 builder: (context) => const MainPage(),
    //                               ));
    //                         },
    //                         child: Ink(
    //                           height: 55,
    //                           width: 60,
    //                           decoration: BoxDecoration(
    //                               color: Color(hexcolor('9156EC')),
    //                               borderRadius: BorderRadius.circular(30)),
    //                           child: const Icon(
    //                             Icons.arrow_forward_outlined,
    //                             color: Colors.white,
    //                           ),
    //                         ),
    //                       ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    return Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 520,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  //  color: Colors.pink,
                    image: DecorationImage(
                        image: AssetImage("Image/img1.png"), fit: BoxFit.fill)),
              ),
                 Container(
                  height: 261,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Color(hexcolor('FFFFFF')),
                      // color: Colors.pink,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 205.0, top: 20, left: 15),
                        child: Text(
                          'Be aware',
                          style: TextStyle(fontSize: 38),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 155.0, top: 5, left: 15),
                        child: Text(
                          'Stay healthy',
                          style: TextStyle(fontSize: 38),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, right: 15.0),
                        child: Text(
                          'welcome to COVID-19 information portal',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, left: 15, right: 20),
                            child: Text(
                              'GET STARTED',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage(),));
                              },
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    color: Color(hexcolor('9156EC')),
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
    );
  }
}
