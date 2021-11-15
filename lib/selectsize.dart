import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectSize extends StatefulWidget {



  @override
  State<SelectSize> createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  var x = 10.00;
  var y = 10.00;
  bool showinpfields = false;
  bool menu1 = false;
  bool menu2 = false;
  bool menu3 = false;
  bool temp = false;
  double _currentSliderValue = 20;
  double b=100.00;
  bool isdocshow = false;
  double cwidth = 0.0;
  double cheight = 0.0;


  double Mult(double x,double _currentSliderValue) {
    var a = x*_currentSliderValue;
    return a;
  }
  double width = 1.0;
  double height = 1.41428;
  double aratio = 0.001;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Template Generater"),
        actions: [


        ],
      ),


      body: Container(

        child: Container(
          child: Row(
            children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.blueAccent,
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text('Select Page Type',
                        style: TextStyle(
                          fontSize: 18, color: Colors.white
                        ),),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isdocshow = true;
                              width = 1.0;
                              height = 1.468;
                               aratio = width/height;
                            });
                          },
                          child: Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                  Icon(CupertinoIcons.news, size: 40, color: Colors.white,),
                                Text('A3',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isdocshow = true;
                              width = 1.0;
                              height = 1.41428;
                              aratio = width/height;

                            });
                          },
                          child: Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.news, size: 40, color: Colors.white,),
                                Text('A4',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isdocshow = true;
                              width = 1.0;
                              height = 1.41891;
                              aratio = width/height;

                            });
                          },
                          child: Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.news, size: 40, color: Colors.white,),
                                Text('A5',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isdocshow = false;
                               showinpfields = true;
                            });
                          },
                          child: Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.news, size: 40, color: Colors.white,),
                                Text('Custom',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white
                                  ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        if(showinpfields==true)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Container(
                            height: 70,
                            child: TextFormField(
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              keyboardType: TextInputType.numberWithOptions(decimal: false),
                              onChanged: (v){
                                setState(() {
                                  if(v.isNotEmpty) {
                                    isdocshow = true;
                                    cwidth = double.parse(v);
                                    height = cwidth;
                                    aratio = width/height;
                                  }
                                });

                              },
                              decoration: InputDecoration(
                                labelText: "Width",
                                suffix: Text('px')
                              ),
                            ),
                          ),
                        ),

                        if(showinpfields==true)
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Container(
                              height: 70,
                              child: TextFormField(
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                keyboardType: TextInputType.numberWithOptions(decimal: false),
                                onChanged: (v){
                                  if(v.isNotEmpty) {
                                    isdocshow = true;
                                    cheight = double.parse(v);
                                    width = cheight;
                                    aratio = width/height;
                                  }
                                },
                                decoration: InputDecoration(
                                    suffix: Text('px'),
                                    labelText: "Height"
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Center(
                    child: Container(

                      // Main Card Used for Template
                      child: AspectRatio(
                        aspectRatio: aratio,
                        child: Card(
                        elevation: isdocshow==true?1:0,
                          color: isdocshow == true?Colors.white:Colors.transparent,

                        ),
                      ),
                    ),
                  ),
                ),
                if(isdocshow == true)
                Expanded(
                child: Container(
                  width: 100,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(
                    bottom: 20
                  ),
                       child: RaisedButton(
                         onPressed: (){},
                         color: Colors.black,
                         child: Text('Save and next', style: TextStyle(
                           color: Colors.white
                         ),),
                       ),
                     )
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
