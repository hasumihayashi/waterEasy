import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import './welcome.dart';
import './results.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/plant.png'),
            
            SizedBox(height: 10.0),
            Center(
              child: Text('WaterEasy',
                  style: TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 30.0,
                      letterSpacing: 5.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 179, 65, 100.0),
                     ),
            ),
            )],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 150.0,
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'By clicking below, you agree to our privacy policy, terms and conditions.',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Roboto-Regular'), //missing underline
              ),
              SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                      fontFamily: 'Roboto-Bold',
                      fontSize: 16.0,
                      color: Colors.white),
                ),
                color: Color.fromRGBO(0, 179, 65, 100.0),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (BuildContext context) => ResultsPage()
                    )
                  );
                
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}