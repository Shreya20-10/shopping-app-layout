import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'MyCart.dart';
import 'Saved.dart';
import 'MyProfile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COMPANY',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    MyCart(),
    Saved(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "COMPANY",
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actionsIconTheme:
            IconThemeData(size: 30.0, color: Colors.black, opacity: 10.0),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blueGrey,
          child: new ListView(children: <Widget>[
            new ListTile(
              title: new Text(
                  "COMPANY",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
              ),
              trailing: new Icon(Icons.cancel),
              contentPadding: EdgeInsets.only(left: 20.0 , right: 20.0),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text(
                  "+91 8765432109",
                style: TextStyle(color: Colors.white),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.account_balance_wallet),
              title: new Text(
                  "My Wallet",
                style: TextStyle(color: Colors.white),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.view_list),
              title: new Text(
                  "My Orders",
                style: TextStyle(color: Colors.white),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.local_offer),
              title: new Text(
                  "Offers",
                  style: TextStyle(color: Colors.white),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.sync),
              title: new Text(
                "Refer",
                style: TextStyle(color: Colors.white),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.exit_to_app),
              title: new Text(
                "Log Out",
                style: TextStyle(color: Colors.white),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.tag_faces),
              title: new Text(
                  "About Us",
                style: TextStyle(color: Colors.white),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.star_border),
              title: new Text(
                  "Rate Us",
                style: TextStyle(color: Colors.white),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.share),
              title: new Text(
                "Share",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],),
        ),
      ),

      body: _children[_currentIndex],
      backgroundColor: Colors.grey.shade300,

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add_shopping_cart),
            title: new Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Bookmark'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
