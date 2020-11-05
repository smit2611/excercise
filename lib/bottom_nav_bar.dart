import 'package:exercise_app/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';
import 'main.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[100],
              Colors.yellow[50],
              Colors.pink[100],
            ],
          ),
          //color: Color(0xFFF5CEB8),
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          boxShadow: [BoxShadow(color: Colors.black38,spreadRadius: 1, blurRadius: 1)]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // DoctorWidget(
          //   title: "Profile",
          //   svgSrc: "assets/icons/calendar.svg",
          // ),
          DoctorWidget(
            press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return MyApp();}),);},
            title: "Home",
            svgSrc: "assets/icons/gym.svg",
          ),
          DoctorWidget(
            press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return Setting();}),);},
            title: "Setting",
            svgSrc: "assets/icons/Settings.svg",
          ),

        ],
      ),
    );
  }
}

class SecondBottomNav extends StatelessWidget {
  const SecondBottomNav({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 62,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[100],
              Colors.yellow[50],
              Colors.pink[100],
            ],
          ),
          //color: kBlueLightColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          boxShadow: [BoxShadow(color: Colors.black38,spreadRadius: 1, blurRadius: 1)]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // DoctorWidget(
          //   title: "Profile",
          //   svgSrc: "assets/icons/calendar.svg",
          // ),
          DoctorWidget(
            press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return MyApp();}),);},
            title: "Home",
            svgSrc: "assets/icons/gym.svg",
          ),
          DoctorWidget(
            press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return Setting();}),);},
            title: "Setting",
            svgSrc: "assets/icons/Settings.svg",
          ),

        ],
      ),
    );
  }
}


class DoctorWidget extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;
  const DoctorWidget({
    Key key, this.svgSrc, this.title, this.press, this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgSrc, color: isActive ? kActiveIconColor:kTextColor,),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor: kTextColor),
          ),
        ],
      ),
    );
  }
}