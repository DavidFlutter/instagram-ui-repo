import 'package:flutter/material.dart';
import 'package:instagram_ui_mitch_koko/pages/account_page_tabs/account_page_tab_one.dart';
import 'package:instagram_ui_mitch_koko/pages/account_page_tabs/account_page_tab_three.dart';
import 'package:instagram_ui_mitch_koko/pages/account_page_tabs/account_page_tab_two.dart';
import 'package:instagram_ui_mitch_koko/utils/stories_icon.dart';

import 'account_page_tabs/account_page_tab_four.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile pic and numbers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "110",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "Post",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "257k",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "270",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                ],
              ),
              // Details
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "David",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Flutter engineer| CEO| Billionaire",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "www.exper.com.ng",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              // Buttons
              Row(
                children: [
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(3),
                      height: 25,
                      alignment: Alignment.center,
                      child: Text("Edit Profile"),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(3),
                      height: 25,
                      alignment: Alignment.center,
                      child: Text("Ad Tools"),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 25,
                      margin: EdgeInsets.all(3),
                      alignment: Alignment.center,
                      child: Text("Insights"),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),

              SizedBox(height: 20),
              // Stories
              Row(
                children: [
                  StoriesIcon(user: "Hello world"),
                  StoriesIcon(user: "Hello world"),
                  StoriesIcon(user: "Hello world"),
                  StoriesIcon(user: "Hello world"),
                ],
              ),

              SizedBox(height: 10),
              // Tabbar
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  AccountPageTabOne(),
                  AccountPageTabTwo(),
                  AccountPageTabThree(),
                  AccountPageTabFour(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
