import 'package:exercise_app/constants.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';



class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _isInterstitialAdLoaded = false;
  @override
  // void initState(){
  //   super.initState();
  //   FacebookAudienceNetwork.init(
  //       testingId: "b9f2908b-1a6b-4a5b-b862-ded7ce289e41",);
  //   _loadInterstitialAd();
  //
  // }
  _launchURLInsta() async {
    const url = 'https://instagram.com/ebrious._?igshid=4or13css9de6';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Setting",
        style: TextStyle(
          color: Colors.white,
          //fontWeight: FontWeight.bold,
        ),
        ),
        //backgroundColor: Colors.red,
        // flexibleSpace: SafeArea(
        //   child: Container(
        //     color: Colors.white,
        //     // decoration: BoxDecoration(
        //     //   gradient: LinearGradient(
        //     //     colors: [
        //     //       Colors.green[100],
        //     //       Colors.yellow[50],
        //     //       Colors.pink[100],
        //     //     ],
        //     //   ),
        //     //
        //     // ),
        //
        //   ),
        // ),
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[100],
              Colors.yellow[50],
              Colors.pink[100],
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //
              //   borderRadius: BorderRadius.circular(20),
              //   color: Colors.red[100],
              //   boxShadow: [
              //     BoxShadow(
              //       offset: Offset(0,4),
              //       blurRadius: 30,
              //       color: kShadowColor,
              //     ),
              //   ],
              // ),
              child: GestureDetector(
                onTap: () {
                  Share.share('https://play.google.com/store/apps/details?id=com.ebrious.com.ebrious.iscanner');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Share',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              // child: Text(
              //   "About us"
              // ),

            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   color: Colors.red[100],
              //   boxShadow: [
              //     BoxShadow(
              //       offset: Offset(0,4),
              //       blurRadius: 30,
              //       color: kShadowColor,
              //     ),
              //   ],
              // ),
              child: GestureDetector(
                // onTap: () {
                //   Share.share('https://play.google.com/store/apps/details?id=com.ebrious.com.ebrious.iscanner');
                // },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("About us",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("This exercise app is an application that can be downloaded on any mobile device and used anywhere to get fit Diat plan to yoga All you need to get fit is here",
                        ),
                    ),
                  ],
                ),
              ),

              // child: Text(
              //   "About us"
              // ),

            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   color: Colors.red[100],
              //   boxShadow: [
              //     BoxShadow(
              //       offset: Offset(0,4),
              //       blurRadius: 30,
              //       color: kShadowColor,
              //     ),
              //   ],
              // ),
              child: GestureDetector(
                onTap: _launchURLInsta,
                // onTap: () {
                //   Share.share('https://play.google.com/store/apps/details?id=com.ebrious.com.ebrious.iscanner');
                // },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("Like Us On Instagram",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    //Text("FASCEBOOK")
                  ],
                ),
              ),

              // child: Text(
              //   "About us"
              // ),

            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: 300),
                margin: EdgeInsets.only(left: 130),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   color: Colors.red[100],
                //   boxShadow: [
                //     BoxShadow(
                //       offset: Offset(0,4),
                //       blurRadius: 30,
                //       color: kShadowColor,
                //     ),
                //   ],
                // ),
                child: GestureDetector(
                  //onTap: _launchURLInsta,
                  // onTap: () {
                  //   Share.share('https://play.google.com/store/apps/details?id=com.ebrious.com.ebrious.iscanner');
                  // },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("     Version 1.1\n@Ebrious Pvt Ltd",
                        ),
                    ],
                  ),
                ),

                // child: Text(
                //   "About us"
                // ),

              ),
            ),
          ],
        ),
      ),
    );

  }
}


