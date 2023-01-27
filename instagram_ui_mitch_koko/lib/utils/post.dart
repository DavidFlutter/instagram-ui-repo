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
      constraints: BoxConstraints(maxWidth: 500),
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "   Liked by ",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: "Shade ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: "and ",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: "others. ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "   David_has",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: " Awesome pic bro",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
