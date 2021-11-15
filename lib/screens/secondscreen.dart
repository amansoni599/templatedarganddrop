import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:templatedarganddrop/screens/Thirdscreen.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late List<bool> isSelected;
  PickedFile? imageFile=null;





 @override
  void initState() {
    // TODO: implement initState
   isSelected = [true, false];
    super.initState();
  }


  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Template'),
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

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                    width: MediaQuery.of(context).size.width-100,
                    height: MediaQuery.of(context).size.height,

                      child: Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Column(
                            children: <Widget>[

                              Positioned(

                                child: Column(
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        Text("Enter your Template name"),
                                        Spacer(),
                                        new Flexible(
                                          child: new TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                labelText: 'Template  Name',
                                                hintText: 'Template  Name'
                                            ),
                                          ),
                                        ),



                                      ],
                                    ),

                                    Row(
                                  children: <Widget>[
                                    Text("Choose your Page Type"),
                                    SizedBox(
                                      height: 50,
                                      width: 300,
                                      child: ListView(
                                        children: [

                                          Spacer(),
                                          ToggleButtons(
                                            borderColor: Colors.black,
                                            fillColor: Colors.grey,
                                            borderWidth: 2,
                                            selectedBorderColor: Colors.black,
                                            selectedColor: Colors.white,
                                            borderRadius: BorderRadius.circular(0),
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'A3',
                                                  style: TextStyle(fontSize: 16),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'A4',
                                                  style: TextStyle(fontSize: 16),
                                                ),
                                              ),
                                            ],
                                            onPressed: (int index) {
                                              setState(() {
                                                for (int i = 0; i < isSelected.length; i++) {
                                                  isSelected[i] = i == index;
                                                }
                                              });
                                            },
                                            isSelected: isSelected,
                                          ),

                                        ],
                                      ),
                                    )
                                  ],
                               ),
                                    RaisedButton(
                                      child:Text("Choose your Image"),
                                      onPressed:()=>   _openGallery(context),
                                    )
                              ],
                                ),
                              ),
                             FlatButton(
                               onPressed: () {

                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Thirdscreen()));
                               },
                               child: Text("Save And Next"),
                             )
                            ],
                          ),

                        ),
                      ),


                ),
              )
            ],

          ),

        ));

  }
}