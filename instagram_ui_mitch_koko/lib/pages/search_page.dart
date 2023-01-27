import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  List storyImages = [
    "lib/assets/post3.jpg",
    "lib/assets/post4.jpg",
    "lib/assets/user1.jpg",
    "lib/assets/user2.jpg",
    "lib/assets/user3.jpg",
    "lib/assets/user5.jpg",
    "lib/assets/user2.jpg",
    "lib/assets/user3.jpg",
    "lib/assets/post3.jpg",
    "lib/assets/post4.jpg",
    "lib/assets/post5.jpg",
    "lib/assets/user2.jpg",
    "lib/assets/user3.jpg",
    "lib/assets/user1.jpg",
    "lib/assets/user2.jpg",
    "lib/assets/user3.jpg",
    "lib/assets/post3.jpg",
    "lib/assets/post4.jpg",
    "lib/assets/post1.jpg",
    "lib/assets/user2.jpg",
    "lib/assets/user3.jpg",
    "lib/assets/user1.jpg",
    "lib/assets/user2.jpg",
    "lib/assets/user3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 35,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: storyImages.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    storyImages[index],
                    fit: BoxFit.cover,
                  ),
                  height: 70,
                  width: 70,
                  color: Colors.grey.shade300,
                  margin: EdgeInsets.only(
                    left: 10,
                    bottom: 10,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
