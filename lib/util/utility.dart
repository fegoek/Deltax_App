import 'package:flutter/material.dart';

Container profileImage(String asset) {
   return Container(
      width: 200,
      height: 190,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff3498DB),
          width: 5
        ),
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          image: DecorationImage(image: AssetImage(asset))),
    );
  
}


Container iconContainer(String icon) {
  return Container(
    width: 50,
    height: 50,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        //image: DecorationImage(image: AssetImage(asset)
        ),
  );
}

Text textInfo(String text, FontWeight fontWeight, Color color) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontFamily: "Poppins",
        fontWeight: fontWeight),
  );
}

Container loadingCircle() {
  return Container(
    clipBehavior: Clip.none,
    child: const Center(
      child: CircularProgressIndicator(),
    ),
  );
}