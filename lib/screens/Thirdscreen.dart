
import 'package:flutter/material.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({Key? key}) : super(key: key);

  @override
  _ThirdscreenState createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {

  bool TFTemp=true;
  bool IFTemp=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose Your Field'),
          leading: Container(),
          elevation: 0,
        ),
        body: Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 100,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: (){
                            print("Create Text Field");
                            setState(() {

                              if(TFTemp==false){
                                TFTemp=true;
                                IFTemp=false;
                                print("TFTemp False");
                              }
                                if(TFTemp==true){
                                  TFTemp=true;
                                  IFTemp=false;
                                  print("TFtemp true");
                                }

                            });




                          },
                          child: Text('Create Text Field',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: (){
                           setState(() {
                             if(IFTemp==false)
                             {
                               IFTemp=true;
                               TFTemp=false;
                               print("if");
                             }else{
                               IFTemp=false;
                               IFTemp=true;
                               print("else");
                             }
                           });

                          },
                          child: Text('Create Image Field',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if(TFTemp==true)
              Expanded(
                flex: 5,
                child: Container(
                    width: MediaQuery.of(context).size.width-100,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          elevation: 0,
                          color: Colors.black26,
                        ),
                      ),
                    )
                ),
              ),
              if(IFTemp==true)
              Expanded(
                flex: 5,
                child: Container(
                    width: MediaQuery.of(context).size.width-100,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          elevation: 0,
                          color: Colors.cyan,
                          child: Column(

                          ),
                        ),
                      ),
                    )
                ),
              )
            ],
          ),
        ));
  }
}
