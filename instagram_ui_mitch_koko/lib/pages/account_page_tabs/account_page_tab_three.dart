import "package:flutter/material.dart";

class AccountPageTabThree extends StatelessWidget {
  List storyImages = [
    "lib/assets/user44.jpg",
    "lib/assets/user5.jpg",
    "lib/assets/post1.jpg",
    "lib/assets/post2.jpg",
    "lib/assets/post3.jpg",
    "lib/assets/post4.jpg",
    "lib/assets/user1.jpg",
    "lib/assets/user2.jpg",
    "lib/assets/user3.jpg",
    "lib/assets/user1.jpg",
    "lib/assets/user2.jpg",
    "lib/assets/user3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: storyImages.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset(
              storyImages[index],
              fit: BoxFit.cover,
            ),
            height: 50,
            width: 50,
            color: Colors.pink,
          ),
        );
      },
    );
  }
}
