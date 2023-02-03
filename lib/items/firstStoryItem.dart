import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget firstStoryItem(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    height: 180,
    width: MediaQuery.of(context).size.width * 0.28,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.28,
          height: 180 * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: AssetImage('assets/f1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 180 * 0.6),
          child: Container(
            height: 180 * 0.4,
            width: MediaQuery.of(context).size.width * 0.28,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 222, 222),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 180 * 0.2),
          child: Center(
            child: CircleAvatar(
              radius: 180 * 0.12,
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
