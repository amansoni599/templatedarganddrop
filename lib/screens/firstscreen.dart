import 'package:flutter/material.dart';
import 'package:templatedarganddrop/screens/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SecondScreen()));
                          },
                          child: Text('Create Template',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width-100,
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Card(
                        elevation: 0,
                        color: Colors.transparent,
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