import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wewatch_video_app/controllers/home_controller/home_controller.dart';
import 'package:wewatch_video_app/custom_widgets/show_up.dart';

class HomeTopItems extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {

      return Column(
        children: [
          ShowUp(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:  // (
                              //     ![
                              //   "",
                              //   null,
                              //   false,
                              //   0,
                              // ].contains(image))
                              //     ? NetworkImage(
                              //   image,
                              // )
                              //     :
                              AssetImage(
                                "assets/images/logo_splash.png",
                              ),
                            ))),
                  ),
                  FutureBuilder(
                    future: Future.delayed(Duration(seconds: 3)),
                    builder: (c, s) => s.connectionState ==
                        ConnectionState.done
                        ? "Testing" != null
                        ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            10, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 0.0, 0.0, 0.0),
                              child: Align(
                                child: new Text(
                                  "Hi! " + "Deepak Gupta",

                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
//                                    textDirection:
//                                    TextDirection.ltr,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Align(
                                child: new Text(
                                  "",//day2 + " " + month + " " + year,
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 12,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.left,
//                                    textDirection:
//                                    TextDirection.LTR,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Align(
                                    child: new Text(
                                      // (![
                                      //   "",
                                      //   null,
                                      //   false,
                                      //   0,
                                      // ].contains(greeting))
                                      //     ? greeting
                                      //     :
                                      "Good Evening",
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight:
                                        FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.left,
//                                        textDirection:
//                                        TextDirection.ltr,
                                    ),
                                    alignment:
                                    Alignment.centerLeft,
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(
                                      10.0, 5.0, 0.0, 0.0),
                                  child: Align(
                                    child: new Text(
                                      '',
                                      style: TextStyle(
                                        color: Color(0xff00adef),
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight:
                                        FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.left,
//                                        textDirection:
//                                        TextDirection.ltr,
                                    ),
                                    alignment:
                                    Alignment.centerLeft,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                        : Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            10, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 0.0, 0.0, 0.0),
                              child: Align(
                                child: new Text(
                                  "Hi! Guest",

                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
//                                    textDirection:
//                                    TextDirection.ltr,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Align(
                                child: new Text(
                                "",//  day2 + " " + month + " " + year,
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 12,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.left,
//                                    textDirection:
//                                    TextDirection.LTR,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Align(
                                    child: new Text(
                                      // (![
                                      //   "",
                                      //   null,
                                      //   false,
                                      //   0,
                                      // ].contains(greeting))
                                      //     ? greeting
                                      //     :
                                      "Good Evening",
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight:
                                        FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.left,
//                                        textDirection:
//                                        TextDirection.ltr,
                                    ),
                                    alignment:
                                    Alignment.centerLeft,
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(
                                      10.0, 5.0, 0.0, 0.0),
                                  child: Align(
                                    child: new Text(
                                      '',
                                      style: TextStyle(
                                        color: Color(0xff00adef),
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight:
                                        FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.left,
//                                        textDirection:
//                                        TextDirection.ltr,
                                    ),
                                    alignment:
                                    Alignment.centerLeft,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                        : Text(''),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  //   child: Center(
                  //     child: Padding(
                  //       padding: EdgeInsets.all(0),
                  //       child: Image.asset(
                  //         "assets/images/live_two.png",
                  //         width: 40,
                  //         height: 40,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            delay: 100,
          ),
        ],
      );

  }
}
