import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project14_facebook/model/friendsModel.dart';

List<FriendsItemModel> friends = [
  FriendsItemModel(
      image: 'assets/f1.jpg', userName: 'Atxam Sayidov', sameFollowers: '13'),
  FriendsItemModel(
      image: 'assets/f2.jpg',
      userName: 'Isroil Mukhitdinov',
      sameFollowers: 'none'),
  FriendsItemModel(
      image: 'assets/f3.jpg',
      userName: 'Davrbek Boboqulov',
      sameFollowers: '44'),
  FriendsItemModel(
      image: 'assets/f4.jpg',
      userName: 'Nozima Avliyakulova',
      sameFollowers: '3'),
  FriendsItemModel(
      image: 'assets/f5.jpg', userName: 'Elmurod Nazirov', sameFollowers: '1'),
  FriendsItemModel(
      image: 'assets/f6.jpg',
      userName: 'Otabek Tolipovich',
      sameFollowers: 'none'),
  FriendsItemModel(
      image: 'assets/f7.jpg', userName: 'Sanat Qodirov', sameFollowers: '22'),
  FriendsItemModel(
      image: 'assets/f8.jpg', userName: 'Maruf Boltayev', sameFollowers: '32'),
  FriendsItemModel(
      image: 'assets/f9.jpg', userName: 'Jalol Roziqulov', sameFollowers: '12'),
  FriendsItemModel(
      image: 'assets/f1.jpg', userName: 'Zarina Karimova', sameFollowers: '2'),
  FriendsItemModel(
      image: 'assets/f5.jpg', userName: 'Elmurod Nazirov', sameFollowers: '1'),
  FriendsItemModel(
      image: 'assets/f6.jpg',
      userName: 'Otabek Tolipovich',
      sameFollowers: 'none'),
  FriendsItemModel(
      image: 'assets/f7.jpg', userName: 'Sanat Qodirov', sameFollowers: '22'),
];
Widget friendsItem(
    BuildContext context, String image, String userName, String sameFollowers) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              image,
              height: 90,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: ClipOval(
                          child: Image.asset(
                            image,
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ClipOval(
                        child: Image.asset(
                          image,
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    sameFollowers,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Text(
                        'Add Friend',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Text(
                        'Remove',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
