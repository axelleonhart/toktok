import 'package:flutter/material.dart';

Widget getIcon(icon, size, count) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.white,
        size: size,
      ),
      SizedBox(height: 5),
      Text(
        count,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      )
    ],
  );
}

Widget getAlbum(albumImge) {
  return Container(
    width: 55,
    height: 55,
    child: Stack(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black
          ),
        ),
        Center(
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(albumImge),
                fit: BoxFit.cover)
            ),
          ),
        ),
      ],
    ),
  );
}

Widget getProfile(profileImg) {
    return Container(
      width: 55,
      height: 60,
      child: Stack(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(profileImg), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left: 18,
            bottom: 0,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
