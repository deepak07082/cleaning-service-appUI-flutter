import 'package:clean_service/widgets/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'screens/home.dart';
import 'package:clean_service/models/catagory.dart';
import 'package:clean_service/models/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "oswald",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List tabs = [
      Home(),
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
          mouseCursor: MouseCursor.defer,
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
