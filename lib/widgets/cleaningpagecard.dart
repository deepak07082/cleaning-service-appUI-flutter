import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cleaningcard extends StatelessWidget {
  final String name;
  final String imgpath;
  final Function ontap;
  const Cleaningcard({Key key, this.name, this.imgpath, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: InkWell(
        onTap: ontap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(
                "assets/svg/${imgpath}",
                height: 40,
                width: 40,
              ),
            ),
            Text("${name}"),
          ],
        ),
      ),
    );
  }
}

class freelancers extends StatelessWidget {
  final String imgpath;
  final Function ontap;
  const freelancers({Key key, this.imgpath, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ontap,
      child: Container(
        height: size.height * 0.12,
        width: size.width * 0.20,
        decoration: BoxDecoration(
          color: Colors.green,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/${imgpath}",
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
