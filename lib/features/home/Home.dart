import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Center(
              child: _image != null ? Image.file(_image): null
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("What do you want to add?"),
                actions: <Widget>[
                  FlatButton(
                    color: Colors.white24,
                    child: Text("Bill photo"),
                    onPressed: () async {
                      _image = await ImagePicker.pickImage(
                        source: ImageSource.camera,
                      );
                      setState(() {
                        
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    color: Colors.white24,
                    child: Text("From gallery"),
                    onPressed: () async {
                      _image = await ImagePicker.pickImage(
                        source: ImageSource.gallery,
                      );
                      setState(() {
                        
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    color: Colors.white24,
                    child: Text("Input"),
                    onPressed: () {
                      print("Input");
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            }
          );
        },
      ),
    );
  }
}
