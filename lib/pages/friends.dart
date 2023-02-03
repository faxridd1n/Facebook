import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project14_facebook/items/friendsItem.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Friends',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 19,
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'People You May Know',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height:
                    MediaQuery.of(context).size.height * 0.155 * friends.length,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: friends.length,
                    itemBuilder: (context, index) {
                      return friendsItem(
                          context,
                          friends[index].image,
                          friends[index].userName,
                          friends[index].sameFollowers);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
