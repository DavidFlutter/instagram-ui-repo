import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  var user;
  var profilePic;
  var imagePost;

  Post({
    this.user = "",
    this.profilePic = "",
    this.imagePost = "",
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  profilePic,
                  fit: BoxFit.cover,
                ),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 5),
              Text(user),
              Spacer(),
              Icon(Icons.menu),
              SizedBox(width: 10)
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            color: Colors.grey,
            height: 300,
            child: Image.asset(
              imagePost,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 5),
              Icon(Icons.favorite),
              SizedBox(width: 5),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 5),
              Icon(Icons.share),
              Spacer(),
              Icon(Icons.bookmark),
              SizedBox(width: 5),
            ],
          )
        ],
      ),
    );
  }
}
