
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';


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
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
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
