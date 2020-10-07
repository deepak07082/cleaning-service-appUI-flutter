import 'package:clean_service/main.dart';
import 'package:clean_service/screens/cleaningservice_body.dart';
import 'package:clean_service/widgets/cleaningpagecard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class cleanroom extends StatelessWidget {
  const cleanroom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "oswald"),
      home: CleaningService(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CleaningService extends StatefulWidget {
  CleaningService({Key key}) : super(key: key);

  @override
  _CleaningServiceState createState() => _CleaningServiceState();
}

class _CleaningServiceState extends State<CleaningService> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List tabs = [
      csbody(),
      Container(
        color: Colors.greenAccent,
      ),
      Container(
        color: Colors.pink,
      ),
      Container(
        color: Colors.yellow,
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          elevation: 5,
          backgroundColor: Colors.white54,
          selectedItemColor: Colors.red[800],
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(size: 30),
          selectedFontSize: 15,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
              ),
              title: Text("shopping"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              title: Text("Settings"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              title: Text("star"),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
