import 'package:clean_service/main.dart';
import 'package:clean_service/screens/Room_cleaning.dart';
import 'package:clean_service/widgets/cleaningpagecard.dart';
import 'package:flutter/material.dart';

class csbody extends StatefulWidget {
  csbody({Key key}) : super(key: key);

  @override
  _csbodyState createState() => _csbodyState();
}

class _csbodyState extends State<csbody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              top: 20,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 45,
                    top: 10,
                    right: 10,
                    bottom: 20,
                  ),
                  child: Text(
                    "Cleaning service",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 45, top: 10, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cleaningcard(
                        name: "Room Cleaning!",
                        imgpath: "1.svg",
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => roomcleaning(),
                            ),
                          );
                        },
                      ),
                      Cleaningcard(
                        name: "Spring Cleaning!",
                        imgpath: "2.svg",
                        ontap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("spring Cleaning!"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 45, top: 30, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cleaningcard(
                        name: "Dry Cleaning!",
                        imgpath: "3.svg",
                        ontap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("dry Cleaning!"),
                            ),
                          );
                        },
                      ),
                      Cleaningcard(
                        name: "office Cleaning!",
                        imgpath: "4.svg",
                        ontap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("office Cleaning!"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 45,
                    top: 30,
                    right: 40,
                    bottom: 40,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cleaningcard(
                        name: "window Cleaning!",
                        imgpath: "5.svg",
                        ontap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("window Cleaning!"),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 45,
                    right: 10,
                    bottom: 20,
                  ),
                  child: Text(
                    "Freelancers",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 45,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      freelancers(
                        imgpath: "f1.jpeg",
                        ontap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("f1 pressed"),
                            ),
                          );
                        },
                      ),
                      freelancers(
                        imgpath: "f2.jpeg",
                        ontap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("f2 pressed"),
                            ),
                          );
                        },
                      ),
                      freelancers(
                        imgpath: "f3.jpeg",
                        ontap: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("f3 pressed"),
                            ),
                          );
                        },
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => roomcleaning(),
                            ),
                          );
                        },
                        child: Container(
                          height: size.height * 0.12,
                          width: size.width * 0.20,
                          decoration: BoxDecoration(
                            color: Colors.black45.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("+253..")),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
