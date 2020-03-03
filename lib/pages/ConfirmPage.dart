import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConfirmPage(),
    );
  }
}

class ConfirmPage extends StatefulWidget {
  ConfirmPage({Key key}) : super(key: key);

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/cinco_logo.png'),
        centerTitle: true,
        title: Text('Parking Confirmation'),
        backgroundColor: Color.fromRGBO(91, 0, 0, 1.0),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/parkingapp.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'Parking Information',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromRGBO(255, 250, 250, 0.9),
                ),
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text(' '),
                padding: EdgeInsets.all(5.0),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Parking Spot Location',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Image.asset('images/parking_spot.jpg'),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Name:',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Grade Level:',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Parking Spot Number:',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Amount Due:',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color.fromRGBO(255, 250, 250, 0.75)),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(25.0),
              ),
              Container(
                child: RaisedButton(
                  child: Text(
                    'Confirm',
                    style: TextStyle(fontSize: 22.0),
                  ),
                  color: Color.fromRGBO(255, 207, 0, 1.0),
                  onPressed: click,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                ),
                padding: EdgeInsets.all(15.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  click() {
    print("Action complete");
  }
}
