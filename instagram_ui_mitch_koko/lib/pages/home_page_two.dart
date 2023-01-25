import 'package:flutter/material.dart';
import 'package:instagram_ui_mitch_koko/utils/post.dart';
import 'package:instagram_ui_mitch_koko/utils/stories_icon.dart';

class HomePageTwo extends StatelessWidget {
  List users = [
    "David",
    "Teni",
    "Shadde",
    "Anu",
    "DARA",
    "Shobe",
    "Danji"
        "Doju",
    "RAMI",
    "Trudo",
    "Oba",
    "Duro",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text("Instagram"),
            Spacer(),
            Icon(Icons.add),
            SizedBox(width: 15),
            Icon(Icons.favorite),
            SizedBox(width: 15),
            Icon(Icons.share),
            SizedBox(width: 0)
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            child: ListView.builder(
              itemCount: users.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoriesIcon(
                  user: users[index],
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Post(
                  user: "David",
                  profilePic: "lib/assets/user1.jpg",
                  imagePost: "lib/assets/post1.jpg",
                ),
                Post(
                  user: "David",
                  profilePic: "lib/assets/user2.jpg",
                  imagePost: "lib/assets/post2.jpg",
                ),
                Post(
                  user: "David",
                  profilePic: "lib/assets/user3.jpg",
                  imagePost: "lib/assets/post3.jpg",
                ),
                Post(
                  user: "David",
                  profilePic: "lib/assets/user44.jpg",
                  imagePost: "lib/assets/post4.jpg",
                ),
                Post(
                  user: "David",
                  profilePic: "lib/assets/user5.jpg",
                  imagePost: "lib/assets/post5.jpg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
