import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class searchbar extends StatefulWidget {
  searchbar({Key key}) : super(key: key);

  @override
  _searchbarState createState() => _searchbarState();
}

class _searchbarState extends State<searchbar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: size.height * 0.03, horizontal: size.width * 0.045),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
            ),
          ),
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.black,
            child: SvgPicture.asset(
              "assets/svg/1.svg",
              fit: BoxFit.fill,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
    Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.045),
      child: Container(
        height: size.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 7,
              spreadRadius: 0,
              offset: Offset(-2, 2),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.red,
            ),
            contentPadding: EdgeInsets.all(size.width * 0.04),
            border: InputBorder.none,
            hintText: "What do you need to have done?",
          ),
        ),
      ),
    );
    Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.04,
        horizontal: size.width * 0.045,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Tasks",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              letterSpacing: 2.5,
            ),
          ),
          InkWell(
            onTap: () {
              print("pressed");
            },
            child: Text(
              "See all",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
