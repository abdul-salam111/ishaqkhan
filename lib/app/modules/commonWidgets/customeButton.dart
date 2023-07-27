import 'package:flutter/material.dart';

import '../const.dart';

Widget customButton(
    {required onPress,
    required String btnName,
    Color bgColor = darkcolor,
    Color textcolor = Colors.white,
    Size? btnSize}) {
  return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: bgColor,
          minimumSize: btnSize),
      child: Text(
        btnName,
        style: TextStyle(),
      ));
}

Widget customButtonOutlined(
    {required onPress,
    required String btnName,
    Color textcolor = Colors.white,
    Color borderColor = darkcolor,
    Size? btnSize}) {
  return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderColor),
          foregroundColor: darkcolor,
          minimumSize: btnSize),
      child: Text(
        btnName,
        style: TextStyle(),
      ));
}

Widget confirmBooking(
    {required onPress,
    required String btnName,
    Color bgColor = darkcolor,
    Color textcolor = Colors.white,
    Size? btnSize}) {
  return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor, minimumSize: btnSize),
      child: Text(
        btnName,
        style: TextStyle(),
      ));
}
