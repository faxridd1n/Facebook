import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project14_facebook/items/firstStoryItem.dart';
import 'package:project14_facebook/items/storyItem.dart';
import 'package:project14_facebook/states.dart';

import '../items/postItem.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/l1.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'What\'s on your mind?',
                        contentPadding: EdgeInsets.only(left: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 10),
              width: MediaQuery.of(context).size.width,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Live')
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Photo'),
                        VerticalDivider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text('Check in')
                          ],
                        ))
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width *
                  0.29 *
                  (storyList.length + 1),
              height: 200,
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: storyList.length,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? firstStoryItem(context)
                        : storyItem(context, storyList[index]);
                  }),
            ),
            Divider(
              thickness: 5,
            ),
            SizedBox(
              height: 500 * 9,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return postItem(context, postList[index], () {
                      postList[index].isLiked = !postList[index].isLiked;
                      setState(() {});
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
