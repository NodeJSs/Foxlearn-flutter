import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 60.0),
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Assets/HeroImage.png'),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.contain),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffF3E7D5), Color(0xffF5EDE2)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Fox',
                            style: TextStyle(color: Color(0xffFF5F54))),
                        TextSpan(
                            text: 'learn',
                            style: TextStyle(color: Color(0xff212330))),
                      ])),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {Navigator.pushNamed(context, "/home");},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    color: Color(0xffFF5F54),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 20.0),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700,
                            color: Color(0xff580600),
                            fontSize: 20.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Create an account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 18.0,
                        color: Color(0xff212330),
                        fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
