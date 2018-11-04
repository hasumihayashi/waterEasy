import 'package:flutter/material.dart';
import 'dart:math';


class ResultsPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _ResultsPageState();
    }
}
class _ResultsPageState extends State<ResultsPage> {
  int light = 280;
  int soil = 240;
  int temperature = 23;
  int humidity = 1436;
  List<int> random = [1436, 1433, 1430, 1428, 1426, 1422, 1420];
  // int random = new Random();
  // int element = 

  Widget _buildHumidityCircle() {
    return CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 179, 65, 100.0),
                  child: Text(humidity.toString(), textScaleFactor: 3.5,),
                  radius: 50.0,
                );
  }

  Widget _buildSoilTextField() {
    return TextField(
      style: TextStyle(
          fontFamily: 'Roboto-Regular',
          fontSize: 11.0,
          color: Color.fromRGBO(0, 0, 0, 0.87)),
      decoration: InputDecoration(labelText: 'Soil'),
      obscureText: true,
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        setState(() {
          // _password = value;
        });
      },
    );
  }


  @override
    Widget build(BuildContext context) {
      final double deviceWidth = MediaQuery.of(context).size.width;
      final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
      final double targetPadding = deviceWidth - targetWidth;

      return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: targetPadding / 1.5),
          margin: EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50.0,),
                Center(child: Text("Uh-oh! Your plants are getting thirsty.", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),),
                SizedBox(height: 50.0,),
                Center(child: CircleAvatar(
                  foregroundColor: Colors.black,
                  backgroundColor: Color.fromRGBO(0, 179, 65, 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Text(humidity.toString(), textScaleFactor: 4.5, style: TextStyle(color: Colors.white),),
                       Text("humidity", textScaleFactor: 2.5, style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  radius: 120.0,
                ),),
                SizedBox(height: 70.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 179, 65, 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Text(soil.toString(), textScaleFactor: 2.5, style: TextStyle(color: Colors.white),),
                       Text("soil", textScaleFactor: 1.0, style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  radius: 50.0,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 179, 65, 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Text(temperature.toString(), textScaleFactor: 2.5, style: TextStyle(color: Colors.white),),
                       Text("temp", textScaleFactor: 1.0, style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  radius: 50.0,
                ),
               CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 179, 65, 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Text(light.toString(), textScaleFactor: 2.5, style: TextStyle(color: Colors.white),),
                       Text("light", textScaleFactor: 1.0, style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  radius: 50.0,
                ),
                ],),
      
                SizedBox(
                    height: 60.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ButtonTheme(
                          height: 40.0,
                          child:  RaisedButton(
                          elevation: 2.0,
                          child: Text(
                            'WATER PLANTS',
                            style: TextStyle(
                                fontFamily: 'Roboto-Bold', fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                      
                          },
                          color: Color.fromRGBO(0, 179, 65, 100.0),
                          textColor: Colors.white,
                        ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    }
}