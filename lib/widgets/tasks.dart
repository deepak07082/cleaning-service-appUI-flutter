import 'package:clean_service/models/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class taskcard extends StatefulWidget {
  taskcard({Key key}) : super(key: key);

  @override
  _taskcardState createState() => _taskcardState();
}

class _taskcardState extends State<taskcard> {
  List<task> tasklist = task.taskk;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 3),
      itemCount: tasklist.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width * 0.30,
          child: Card(
            child: InkWell(
              splashColor: Colors.black,
              onTap: () {
                if (tasklist[index].taskname == "clean the room") {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text("${tasklist[index].taskname}"),
                    ),
                  );
                }
                if (tasklist[index].taskname == "fix the washing machine") {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text("${tasklist[index].taskname}"),
                    ),
                  );
                }
                if (tasklist[index].taskname == "watch the dogs") {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(milliseconds: 500),
                      content: Text("${tasklist[index].taskname}"),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/images/${tasklist[index].bgimgpath}"),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        bottom: 10.0,
                      ),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(
                            "assets/svg/${tasklist[index].imgpath}"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, bottom: 6),
                      child: Text("${tasklist[index].taskname}"),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
