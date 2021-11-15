import 'dart:html';

import 'package:syncfusion_flutter_sliders/sliders.dart';


import 'package:flutter/material.dart';
import 'package:templatedarganddrop/dynaimc_button/example_page.dart';
import 'package:templatedarganddrop/screens/Thirdscreen.dart';
import 'package:templatedarganddrop/screens/firstscreen.dart';
import 'package:templatedarganddrop/screens/secondscreen.dart';
import 'package:templatedarganddrop/selectsize.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  FirstScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
bool showsidebar = true;
class _MyHomePageState extends State<MyHomePage> {
  var x = 10.00;
  var y = 10.00;
  bool menu1 = false;
  bool menu2 = false;
  bool menu3 = false;
  bool temp = false;
  double _currentSliderValue = 20;
   double b=100.00;



  double Mult(double x,double _currentSliderValue) {
     var a = x*_currentSliderValue;
     return a;
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
     bottomNavigationBar:  Container(
       height: 70,
       width: MediaQuery.of(context).size.width,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Container(
             width: 220,
             child: SfSlider(
               min: 0.0,
               max: 100.0,
               value: _currentSliderValue,
               interval: 20,
               showTicks: false,
               showLabels: false,
               enableTooltip: true,
               minorTicksPerInterval: 1,
               onChanged: (dynamic value){
                 setState(() {
                   _currentSliderValue = value;
                   b= Mult(x, _currentSliderValue);
                 });
               },
             ),
           ),
         ],
       ),
     ),
      appBar: AppBar(
        title: Text("Template Generater"),
        actions: [


        ],
      ),


      body: Container(

        child: Container(
          child: Row(
            children: [

              // First Left Hand Side Bar for TextField And Image Selection
              // if(showsidebar==true)

              SizedBox(
                height: MediaQuery.of(context).size.height,
                width:100 ,
                child: Expanded(

                  child: Container(

                    color: Colors.blue,
                    child: ListView(

                      children: <Widget>[

                        // Template
                        InkWell(
                          child: Container(
                            height: 50,
                            color: Colors.amber[600],
                            child: const Center(child: Text('Template')),
                          ),
                          onTap: () {
                            print("Template");
                            setState(() {
                              print("Frist Condition1");
                              if (menu1 == true) {
                                setState(() {
                                  menu1 = false;
                                  print("Condition 2");
                                });
                              } else {
                                setState(() {
                                  menu2 = false;
                                  menu3 = false;
                                  menu1 = true;

                                  print("Condition 3");
                                });
                              }
                            });
                          },
                        ),

                        // Drag And Drop
                        InkWell(
                          child: Container(
                            height: 50,
                            color: Colors.amber[600],
                            child: const Center(child: Text(
                                'Darg And Drop Field')),
                          ),
                          onTap: () {
                            print("Entry B");

                            setState(() {
                              print("Frist Condition1");
                              if (menu2 == true) {
                                setState(() {
                                  menu2 = false;
                                  print("Condition 2");
                                });
                              } else {
                                setState(() {
                                  menu1 = false;
                                  menu3 = false;
                                  menu2 = true;

                                  print("Condition 3");
                                });
                              }
                            });
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: 50,
                            color: Colors.amber[600],
                            child: const Center(child: Text('Entry C')),
                          ),
                          onTap: () {
                            print("Entry C");

                            setState(() {
                              print("Frist Condition1");
                              if (menu3 == true) {
                                setState(() {
                                  menu3 = false;
                                  print("Condition 2");
                                });
                              } else {
                                setState(() {
                                  menu2 = false;
                                  menu1 = false;
                                  menu3 = true;
                                  print("Condition 3");
                                });
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              // Set template background

              // // choose Your Template
              // if(menu1 == true)
              //   Expanded(
              //     flex: 3,
              //     child: Container(
              //       width: 50,
              //       height: MediaQuery
              //           .of(context)
              //           .size
              //           .height,
              //       color: Colors.blue,
              //       child: ListView(
              //
              //         children: <Widget>[
              //           InkWell(
              //             child: Card(
              //
              //               color: Colors.amber[600],
              //               child: Image.asset(
              //                 'temp1.png',
              //                 fit: BoxFit.cover,
              //               ),
              //             ),
              //             onTap: () {
              //               print("Entry A");
              //               setState(() {
              //                 temp = true;
              //               });
              //             },
              //           ),
              //           InkWell(
              //             child: Card(
              //
              //               color: Colors.amber[600],
              //               child: Image.asset(
              //                 'temp2.png',
              //                 fit: BoxFit.cover,
              //               ),
              //             ),
              //             onTap: () {
              //               print("Entry B");
              //               setState(() {
              //
              //               });
              //             },
              //           ),
              //           InkWell(
              //             child: Card(
              //
              //               color: Colors.amber[600],
              //               child: const Center(child: Text('Entry C')),
              //             ),
              //             onTap: () {
              //               print("Entry C");
              //             },
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),

              // Drag and Drop Filed Insde Implementation
              if(menu2 == true)
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  width: 300,

                  child: Expanded(
                    flex: 3,
                    child: Container(
                      width: 50,

                      color: Colors.black12,
                      child: ListView(

                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: 50,
                              child:FlatButton(onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const ExamplePage(),
                                  ),
                                );
                              },
                              child:Text("Text Field Create")
                                ,

                              )
                            ),
                            onTap: () {
                              print("Entry A");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: 50,
                              color: Colors.amber[600],
                              child: const Center(child: Text('Entry B')),
                            ),
                            onTap: () {
                              print("Entry B");
                            },
                          ),
                          InkWell(
                            child: Container(
                              height: 50,
                              color: Colors.amber[600],
                              child: const Center(child: Text('Entry C')),
                            ),
                            onTap: () {
                              print("Entry C");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if(menu3 == true)
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 50,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    color: Colors.blue,
                    child: ListView(

                      children: <Widget>[
                        InkWell(
                          child: Container(
                            height: 50,
                            color: Colors.amber[600],
                            child: const Center(child: Text('Entry c')),
                          ),
                          onTap: () {
                            print("Entry A");
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: 50,
                            color: Colors.amber[600],
                            child: const Center(child: Text('Entry B')),
                          ),
                          onTap: () {
                            print("Entry B");
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: 50,
                            color: Colors.amber[600],
                            child: const Center(child: Text('Entry C')),
                          ),
                          onTap: () {
                            print("Entry C");
                          },
                        ),
                      ],
                    ),
                  ),
                ),



              // Main Card Inside Code for Both side

              //
              //
              // if(temp == true)
              //   Expanded(
              //
              //     flex: 6,
              //     child: Center(
              //       child: FittedBox(
              //         child: Container(
              //
              //
              //           height: Mult(x, _currentSliderValue),
              //           width: 1.41428 *Mult(x, _currentSliderValue),
              //
              //           // Main Card Used for Template
              //           child: Card(
              //             color: Colors.yellowAccent,
              //             child: Image.asset(
              //               'temp1.png',
              //               fit: BoxFit.cover,
              //
              //             ),
              //
              //
              //
              //
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // if(temp == false)
              //   Expanded(
              //     flex: 6,
              //     child: Center(
              //       child: Container(
              //         height: Mult(x, _currentSliderValue),
              //         width: 1.41428 * Mult(x, _currentSliderValue),
              //
              //         // Main Card Used for Template
              //         child: Card(
              //           color: Colors.yellowAccent,
              //
              //         ),
              //       ),
              //     ),
              //   ),


            ],
          ),
        ),
      ),
    );
  }
}





