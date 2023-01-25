import 'package:flutter/material.dart';

class StoriesIcon extends StatelessWidget {
  var user;

  StoriesIcon({
    this.user = "",
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Text(user)
        ],
      ),
    );
  }
}
