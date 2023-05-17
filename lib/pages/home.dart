import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/util/bubbleStories.dart';
import 'package:instagram_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);
  List<List<dynamic>> data = [
    ["Your Story", "assets/people/beckham.jpg", "assets/posts/9.jpg"],
    ["Asif Ali", "assets/people/Asif.jpg", "assets/posts/1.jpg"],
    ["Dulquer", "assets/people/DQ.jpg", "assets/posts/2.jpg"],
    ["Fahad Fasil", "assets/people/Fahadh.jpg", "assets/posts/3.jpg"],
    ["Jayasurya", "assets/people/jayasurya.jpg", "assets/posts/4.jpg"],
    ["Kunchacko", "assets/people/kunchacko.jpg", "assets/posts/5.jpg"],
    ["Prithviraj", "assets/people/Prithviraj.jpg", "assets/posts/6.jpg"],
    ["Tovino", "assets/people/Tovino.jpg", "assets/posts/7.jpg"],
    ["Vineeth", "assets/people/vineeth.jpg", "assets/posts/8.jpg"],
  ];

  @override
  Widget build(BuildContext context) {
    var posts = data.skip(1).toList();
    var revdata = data.reversed.toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  fontFamily: "LobsterTwo"),
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                )),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: 26,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
                size: 24,
              ))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 110,
              color: Colors.white,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BubbleStories(
                      name: data[index][0], image: data[index][1]);
                },
                itemCount: data.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ])),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: posts.length,
            (context, index) {
              return UserPosts(
                name: posts[index][0],
                people: posts[index][1],
                post: posts[index][2],
                commentName: revdata[index][0],
                likedNames: posts[index][0],
              );
            },
          ))
        ],
      ),
    );
  }
}
