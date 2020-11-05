import 'package:exercise_app/constants.dart';
import 'package:exercise_app/diet.dart';
import 'package:exercise_app/home_exer.dart';
import 'package:exercise_app/screens/details_screen.dart';
import 'package:exercise_app/screens/facebbok.dart';
import 'package:exercise_app/setting.dart';
import 'package:exercise_app/timePass.dart';
import 'package:exercise_app/yoga.dart';
import 'package:facebook_audience_network/ad/ad_interstitial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';


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
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //this is give us hieght and width of our device
    String message = "";
    DateTime now = DateTime.now();
    var timeNow = int.parse(DateFormat('kk').format(now));
    if(timeNow <= 12){
      message = 'Good Morning';
    }else if((timeNow>12) && (timeNow <=16)){
      message = 'Good Afternoon';
    }else if((timeNow>16) && (timeNow <20)){
      message = 'Good Evening';
    }else{
      message = 'Good Night';
    }

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Stack(
          //use 45% height
          children: <Widget>[Container(height: size.height * .35,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green[100],
                  Colors.yellow[50],
                  Colors.pink[100],
                ],
              ),
             // color: Color(0xFFF5CEB8),
              // image: DecorationImage(
              //   alignment: Alignment.centerLeft,
              //     image: AssetImage("assets/images/undraw_pilates_gpdb.png")),


            ),
          ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  //   Align(
                  //     alignment: Alignment.topRight,
                  //     child: Container(
                  //       alignment: Alignment.center,
                  //       height: 52,
                  //       width: 52,
                  //       decoration: BoxDecoration(
                  //         color: Color(0xFFF2BEA1),
                  //         shape: BoxShape.circle,
                  //     ),
                  //     child: SvgPicture.asset("assets/icons/menu.svg"),
                  // ),
                  //   ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Center(
                      child: Text(message, style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900)
                      ),
                    ),
                  ),
                    SizedBox(height: 120,),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: .85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          NewWidget(
                            title: "Diet Recommendation",
                            svgSrc: "assets/icons/Hamburger.svg",
                            press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return Diet();}),);},
                          ),
                          NewWidget(
                            title: "Home Exercises",
                             svgSrc: "assets/icons/Excrecises.svg",
                            press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return HomeExercise();}),);},
                          ),
                          NewWidget(
                            title: "gym workout",
                            svgSrc: "assets/icons/Meditation.svg",
                            press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return YogaEx();}),);},
                          ),
                          NewWidget(
                            title: "yoga",
                            svgSrc: "assets/icons/yoga.svg",
                            press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return DetailsScreen();}),);},
                          ),
                          NewWidget(
                            title: "Diet Recommendation",
                            svgSrc: "assets/icons/Hamburger.svg",
                            press: (){FacebookInterstitialAd.loadInterstitialAd(
                              placementId: "IMG_16_9_LINK",
                              listener: (result, value) {
                                if (result == InterstitialAdResult.LOADED)
                                  FacebookInterstitialAd.showInterstitialAd(delay: 5000);
                              },
                            );},
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
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
        //color: Color(0xFFF5CEB8),
        borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
        boxShadow: [BoxShadow(color: Colors.black38,spreadRadius: 1, blurRadius: 1)]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // DoctorWidget(
          //   //press: _launchURL,
          //   //press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return timePass();}),);},
          //   title: "Profile",
          //   svgSrc: "assets/icons/calendar.svg",
          // ),
          DoctorWidget(
            //press: (){Navigator.push(context, MaterialPageRoute(builder:(context){return MyApp();}),);},
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
// _launchURL() async {
//   const url = 'https://flutter.dev';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

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

class NewWidget extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const NewWidget({
    Key key, this.svgSrc, this.title, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   stops: [0.3,1],
          //   colors: [
          //     Colors.pink[300],
          //     Colors.pink[100],
          //   ]
          // ),
            color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Column(
              children: <Widget>[
                Spacer(),
                SvgPicture.asset(svgSrc),
                Spacer(),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
