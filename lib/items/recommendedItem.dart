import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project14_facebook/model/recommendedModel.dart';

List<RecommendedModel> notificList = [
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Abdulloh',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(
        Icons.message,
        color: Colors.white,
        size: 15,
      )),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Sardor',
      actionCategory: 'added a new photo',
      time: 'Jan 1 at 20:10',
      actionIcon: Icon(Icons.message, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Ilxom',
      actionCategory: 'shared',
      time: 'Jan 20 at 14:10',
      actionIcon: Icon(Icons.person, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Akmal',
      actionCategory: 'You have anew friend suggetion',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.message, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Nodir',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.video_call, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Abdulloh',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.message, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Abdulloh',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.message, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Abdulloh',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.message, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Abdulloh',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.person, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Abdulloh',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.message, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Abdulloh',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.message, color: Colors.white, size: 15)),
  RecommendedModel(
      image: 'assets/f1.jpg',
      userName: 'Abdulloh',
      actionCategory: 'added a new photo',
      time: 'Jan 20 at 00:10',
      actionIcon: Icon(Icons.message, color: Colors.white, size: 15)),
];
Widget notificItem(BuildContext context, String image, Icon actionIcon,
    String userName, String action, String time) {
  return Container(
    color: Color.fromARGB(255, 100, 204, 245),
    height: MediaQuery.of(context).size.height * 0.15,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipOval(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 70,
                  width: 70,
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue.shade700,
                  child: actionIcon,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  child: Text(
                userName,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              Flexible(child: Text(action)),
              Text(
                time,
                style: TextStyle(color: Color.fromARGB(239, 26, 25, 25)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
