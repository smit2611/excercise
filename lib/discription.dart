import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Discription extends StatefulWidget {
  @override
  _DiscriptionState createState() => _DiscriptionState();
  String name ;
  String image;
  String disc;
  String youtube;
  String dname;

  Discription({Key key, this.name, this.image, this.disc,this.youtube,this.dname}):super(key: key);

}


class _DiscriptionState extends State<Discription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(widget.image)
              ),
              SizedBox(height: 20,),
              Text(widget.disc,
              style: TextStyle(fontWeight: FontWeight.w400),),
              SizedBox(height: 90,),
              FlatButton(
                color: Colors.red[300],
                shape: StadiumBorder(),
                onPressed: () async {
                  final url = widget.youtube;
                  if (await canLaunch(url) != null) {
                  await launch(url);
                  } else {
                  throw 'Could not launch $url';
                  }
                },

                child: Text("youtube"),
              )
              // Image(
              //     image: AssetImage(widget.image)
              // ),
              // Image(
              //     image: AssetImage(widget.image)
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
class DietDiscription extends StatefulWidget {
  @override
  _DietDiscriptionState createState() => _DietDiscriptionState();
  String name ;
  String image;
  String disc;
  String dname;

  DietDiscription({Key key, this.name, this.image, this.disc,this.dname}):super(key: key);

}


class _DietDiscriptionState extends State<DietDiscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage(widget.image)
              ),
              SizedBox(height: 20,),
              Text(widget.disc,
                style: TextStyle(fontWeight: FontWeight.w400),),
              SizedBox(height: 90,),
              // FlatButton(
              //   color: Colors.indigo[300],
              //   shape: StadiumBorder(),
              //   onPressed: () async {
              //     final url = widget.youtube;
              //     if (await canLaunch(url) != null) {
              //       await launch(url);
              //     } else {
              //       throw 'Could not launch $url';
              //     }
              //   },
              //
              //   child: Text("youtube"),
              // )
              // Image(
              //     image: AssetImage(widget.image)
              // ),
              // Image(
              //     image: AssetImage(widget.image)
              // ),

            ],
          ),
        ),
      ),
    );
  }
}



// _launchURL(String link) async {
//   const url = 'https://www.youtube.com/watch?v=UlzISnMpoRU';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }



