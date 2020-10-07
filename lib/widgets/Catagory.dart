import 'package:clean_service/models/catagory.dart';
import 'package:clean_service/screens/cleaning%20service.dart';
import 'package:flutter/material.dart';

class catagorycard extends StatefulWidget {
  catagorycard({Key key}) : super(key: key);

  @override
  _catagorycardState createState() => _catagorycardState();
}

class _catagorycardState extends State<catagorycard> {
  List<catagory> catagorylist = catagory.catagory1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      margin: EdgeInsets.all(6),
      child: ListView.builder(
        itemCount: catagorylist.length,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 3),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(),
            width: size.width * 0.6,
            child: Card(
              child: InkWell(
                onTap: () {
                  if (catagorylist[index].name == "Room Cleaning") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => cleanroom(),
                      ),
                    );
                  }
                  if (catagorylist[index].name == "house Cleaning") {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(milliseconds: 500),
                        content: Text(
                          "House cleaning pressed!",
                        ),
                      ),
                    );
                  }
                  if (catagorylist[index].name == "office Cleaning") {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(milliseconds: 500),
                        content: Text(
                          "House cleaning pressed!",
                        ),
                      ),
                    );
                  }
                },
                hoverColor: Colors.black,
                splashColor: Colors.black38,
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            "assets/images/${catagorylist[index].img}",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${catagorylist[index].name}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Stack(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                      "assets/images/${catagorylist[index].roundimg}"),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 25),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                      "assets/images/${catagorylist[index].roundimg2}"),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 45),
                                child: CircleAvatar(
                                    radius: 15, child: Icon(Icons.more_horiz)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
