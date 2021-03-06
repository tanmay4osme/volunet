import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animation_exp/ProfilePage/profile_page.dart';
import 'package:animation_exp/CreateProfile/CreateProfile.dart';

class Welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomeState();
  }
}

const IconData account_circle = IconData(0xe853, fontFamily: 'MaterialIcons');

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/welcome.jpg"), fit: BoxFit.cover,),
              ),
            ),
            new Center(
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Text('Welcome to Volunet',
                    style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    fontFamily: 'Roboto',
                  ),
                ),
                  SizedBox(height: 72.0),
                new RaisedButton(
                  color: Colors.blue,
                  child: new Text('Log in with LinkedIn'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                    new MaterialPageRoute(builder: (context) => new Profile()));
                    },
                ),
                new RaisedButton(
                  child: new Text('Create Profile'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(builder: (context) => new CreateProfile()));
                  },
                )
                ],
              ),
            ),
          ],
      ),
    );
  }
}