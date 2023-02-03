import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project14_facebook/items/firstStoryItem.dart';
import 'package:project14_facebook/items/postItem.dart';
import 'package:project14_facebook/items/storyItem.dart';
import 'package:project14_facebook/pages/friends.dart';
import 'package:project14_facebook/pages/home.dart';
import 'package:project14_facebook/pages/recomended.dart';
import 'package:project14_facebook/states.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey.shade800,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.grey.shade800,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.people,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Friends(),
            Notific(),
          ],
        ),
      ),
    );
  }
}
