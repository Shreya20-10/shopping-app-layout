import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  "Discover",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(250, 10, 5, 0),
                height: 15.0,
                width: 35.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueGrey,
                ),
                child: Text(
                  "See All",
                  style: TextStyle(color: Colors.white, fontSize: 8.0),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.only(top: 2.0),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView(
              padding: EdgeInsets.fromLTRB(10, 10, 5, 5),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              height: 150.0,
              width: 330.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                  color: Colors.grey,
                    offset: Offset(3.0, 3.0),
                    blurRadius: 10.0,
                  ),
                ]
              ),
            ),

          Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                height: 150.0,
                width: 130.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 10.0,
                      ),
                    ]
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                height: 150.0,
                width: 130.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 10.0,
                      ),
                    ]
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
