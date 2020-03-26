import 'package:flutter/material.dart';
import 'package:example2/widgets/category.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 5.0),
        children: <Widget>[
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.filter_list,
                    size: 35.0,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Books',
                    style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(
                Icons.notifications,
                size: 28.0,
              )
            ],
          ),
          SizedBox(height: 25.0),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      offset: Offset(0, 10.0),
                      blurRadius: 40.0,
                      spreadRadius: 0.0)
                ]),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Books',
              ),
            ),
          ),
          SizedBox(height: 35.0),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF9F3),
                    //border: Border.all(width:2.0, color: Colors.red[400]),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 320.0,
                  height: 480.0,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xf4eadc),
                      //border: Border.all(width:2.0, color: Colors.blue[400]),
                      borderRadius: BorderRadius.circular(20.0)),
                  height: 450.0,
                  width: 400.0,
                ),
              ),
              Positioned(
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset('Assets/OBJECTS.png'))),
              Positioned(
                bottom: 70.0,
                left: 40.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "New Edition | For Class Five",
                      style: TextStyle(fontSize: 15.0, fontFamily: "Gilroy"),
                    ),
                    SizedBox(height: 10.0),
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                          style: TextStyle(
                              fontFamily: "Gilroy",
                              color: Colors.black,
                              fontSize: 35.0),
                          children: <TextSpan>[
                            TextSpan(text: "Science with \n"),
                            TextSpan(
                                text: "Craft",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Categories",
                      style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.format_indent_increase,
                      size: 30.0,
                    )
                  ],
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 50.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Category(
                        bodyColor: Color(0xffD2DFFF),
                        textColor: Color(0xff4E67A8),
                        categoryText: "Science",
                      ),
                      Category(
                        bodyColor: Color(0xffE1FFBB),
                        textColor: Color(0xff68893F),
                        categoryText: "Mathematics",
                      ),
                      Category(
                        bodyColor: Color(0xffFFE4BB),
                        textColor: Color(0xffAA8957),
                        categoryText: "Economics",
                      ),
                      Category(
                        bodyColor: Color(0xffD2DFFF),
                        textColor: Color(0xff4E67A8),
                        categoryText: "Science",
                      ),
                      Category(
                        bodyColor: Color(0xffE1FFBB),
                        textColor: Color(0xff68893F),
                        categoryText: "Mathematics",
                      ),
                      Category(
                        bodyColor: Color(0xffFFE4BB),
                        textColor: Color(0xffAA8957),
                        categoryText: "Economics",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}