import 'package:clean_service/models/freelancers.dart';
import 'package:clean_service/screens/cleaning%20service.dart';
import 'package:flutter/material.dart';

class rcbody extends StatefulWidget {
  rcbody({Key key}) : super(key: key);

  @override
  _rcbodyState createState() => _rcbodyState();
}

class _rcbodyState extends State<rcbody> {
  int count = 73;
  List<freelancer> freelancerlist = freelancer.freelancer1;
  List val;
  @override
  Widget build(BuildContext context) {
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
                      builder: (context) => cleanroom(),
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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 45,
                top: 10,
                right: 10,
                bottom: 5,
              ),
              child: Text(
                "Cleaning service",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 45,
                right: 10,
              ),
              child: Text(
                "${count} Freelancers",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: freelancerlist.length,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 3),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(left: 60),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Card(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    blurRadius: 1,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.only(left: 80),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "${freelancerlist[index].name}",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      bottom: 15,
                                    ),
                                    child: Text(
                                      "${freelancerlist[index].role}",
                                      style: TextStyle(
                                        color: Colors.brown,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                          "Jobs\n${freelancerlist[index].jobsdone}"),
                                      Text(
                                          "Ratings\n${freelancerlist[index].rating}"),
                                      Text(
                                          "Salary\n${freelancerlist[index].sal}"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 150,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/${freelancerlist[index].imgpath}"))),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
