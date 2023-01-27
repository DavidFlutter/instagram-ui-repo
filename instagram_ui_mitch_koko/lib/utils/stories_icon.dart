import 'package:flutter/material.dart';

class StoriesIcon extends StatelessWidget {
  var user;
  var storyImage;

  StoriesIcon({
    this.user = "",
    this.storyImage = "",
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(1),
            child: Container(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                storyImage,
                fit: BoxFit.cover,
              ),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.purple,
              ),
            ),
          ),
          Text(user)
        ],
      ),
    );
  }
}
